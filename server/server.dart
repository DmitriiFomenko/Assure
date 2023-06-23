import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:assure/models/account.dart';
import 'package:assure/protos/generated/server.pbgrpc.dart';
import 'package:assure/utils/port.dart';
import 'package:fixnum/src/int64.dart';
import 'package:grpc/grpc.dart';
import 'dart:io';

const _toData = '../data/';
const _pathToAccounts = '${_toData}accounts/';
const _pathToTests = '${_toData}tests/';
const _pathToResults = '${_toData}test_result/';

class ServerUtils {
  static String getDate() {
    final dateTime = DateTime.now();
    final day = dateTime.day.toString().padLeft(2, '0');
    final month = dateTime.month.toString().padLeft(2, '0');
    final year = dateTime.year;

    final date = '$day.$month.$year';
    return date;
  }

  static bool checkAccount({Account? account, AccountProto? accountProto}) {
    if (account == null && accountProto == null) return false;

    account ??= Account(
        login: accountProto!.login.toLowerCase(),
        password: accountProto.password);

    const pathToAccounts = '${_toData}accounts/';
    final file = File('$pathToAccounts${account.login}.txt');

    if (file.existsSync()) {
      final data = file.readAsStringSync();
      final accountData = Account.fromJson(jsonDecode(data));
      return account == accountData;
    } else {
      return false;
    }
  }
}

class GreeterService extends GreeterServiceBase {
  @override
  Future<AuthReply> signUp(ServiceCall call, AuthRequest request) async {
    final account = Account(
        login: request.account.login.toLowerCase(),
        password: request.account.password);

    final file = File('$_pathToAccounts${account.login}.txt');
    if (file.existsSync()) return AuthReply(result: false);

    file.createSync();
    file.writeAsStringSync(jsonEncode(account.toJson()));
    return AuthReply(result: true);
  }

  @override
  Future<AuthReply> signIn(ServiceCall call, AuthRequest request) async {
    final result = ServerUtils.checkAccount(accountProto: request.account);
    return AuthReply(result: result);
  }

  @override
  Future<ChangePasswordReply> changePassword(
      ServiceCall call, ChangePasswordRequest request) async {
    final account = Account(
        login: request.account.login.toLowerCase(),
        password: request.account.password);

    final result = ServerUtils.checkAccount(accountProto: request.account);
    if (!result) {
      return ChangePasswordReply(checkOldPassword: false, result: false);
    }

    final file = File('$_pathToAccounts${account.login}.txt');

    final newAccount = account.copyWith(password: request.newPassowrd);

    if (file.existsSync()) {
      file.writeAsStringSync(jsonEncode(newAccount.toJson()));
      return ChangePasswordReply(checkOldPassword: true, result: true);
    }

    return ChangePasswordReply(checkOldPassword: false, result: false);
  }

  @override
  Future<QuestionCreateProtoResult> createQuestion(
      ServiceCall call, QuestionCreateProto request) async {
    try {
      final result = ServerUtils.checkAccount(accountProto: request.account);
      if (!result) {
        return QuestionCreateProtoResult(created: false);
      }
      //======================================================

      File file;
      int randomDigit = Random().nextInt(1000000);
      do {
        file = File('$_pathToTests$randomDigit.txt');
      } while (file.existsSync());

      request.account.password = '';
      request.description.date = ServerUtils.getDate();
      request.description.rating = 0;
      request.description.countPasses = Int64(0);

      file.writeAsStringSync(request.writeToJson());

      //======================================================

      final stats = QuestionResultProto(
        variants: List.generate(
            request.listResult.length,
            (index) => VariantAndStats(
                stats: '0', variant: request.listResult[index])),
        sumCount: '0',
        scoreCount: '0',
        scoreSum: '0',
      );

      File('$_pathToResults$randomDigit.txt')
          .writeAsStringSync(stats.writeToJson());

      return QuestionCreateProtoResult(created: true);
    } catch (e) {
      return QuestionCreateProtoResult(created: false);
    }
  }

  @override
  Future<QuestionGetProtoReply> getQuestion(
      ServiceCall call, QuestionGetProto request) async {
    final result = QuestionGetProtoReply(questionDescriptionProto: []);

    final dir = Directory(_pathToTests);
    List<FileSystemEntity> contents = dir.listSync()
      ..sort(
        (b, a) => a.statSync().changed.compareTo(b.statSync().changed),
      );
    for (var file in contents) {
      if (file is File) {
        final nameTest = file.path.split('/').last;
        final id = nameTest.substring(0, nameTest.length - 4);
        final dataString = file.readAsStringSync();
        final data = QuestionCreateProto.fromJson(dataString);
        result.questionDescriptionProto.add(data.description..id = id);
      }
    }
    return result;
  }

  @override
  Future<QuestionCreateProto> getIdQuestion(
      ServiceCall call, QuestionIdGetProto request) async {
    final file = File('$_pathToTests${request.id}.txt');
    final nameTest = file.path.split('/').last;
    final id = nameTest.substring(0, nameTest.length - 4);

    final dataString = file.readAsStringSync();
    final data = QuestionCreateProto.fromJson(dataString);
    data.description.id = id;
    return data;
  }

  @override
  Future<QuestionResultProto> getResultTest(
      ServiceCall call, GetResultRequest request) async {
    final fileResult = File('$_pathToResults${request.id}.txt');
    final dataStringResult = fileResult.readAsStringSync();

    final qustionResult = QuestionResultProto.fromJson(dataStringResult);

    int indexAnswer = -1;
    for (var i = 0; i < qustionResult.variants.length; i++) {
      if (qustionResult.variants[i].variant == request.result) indexAnswer = i;
    }
    if (indexAnswer != -1) {
      qustionResult.variants[indexAnswer].stats =
          ((int.tryParse(qustionResult.variants[indexAnswer].stats) ?? 0) + 1)
              .toString();

      qustionResult.sumCount =
          ((int.tryParse(qustionResult.sumCount) ?? 0) + 1).toString();
      qustionResult.scoreCount =
          ((int.tryParse(qustionResult.scoreCount) ?? 0) + 1).toString();
      qustionResult.scoreSum = ((int.tryParse(qustionResult.scoreSum) ?? 0) +
              (int.tryParse(request.score) ?? 0))
          .toString();
      fileResult.writeAsStringSync(qustionResult.writeToJson());
    }

    final fileTest = File('$_pathToTests${request.id}.txt');
    final dataStringTest = fileTest.readAsStringSync();

    final questionTest = QuestionCreateProto.fromJson(dataStringTest);
    questionTest.description.countPasses =
        Int64(int.tryParse(qustionResult.sumCount) ?? 0);
    fileTest.writeAsStringSync(questionTest.writeToJson());

    return qustionResult;
  }
}

Future<void> main(List<String> args) async {
  final server = Server(
    [GreeterService()],
    [],
    CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
  );
  await server.serve(port: port);
  print('Server listening on port ${server.port}...');
}
