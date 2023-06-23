///
//  Generated code. Do not modify.
//  source: server.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'server.pb.dart' as $0;
export 'server.pb.dart';

class GreeterClient extends $grpc.Client {
  static final _$signUp = $grpc.ClientMethod<$0.AuthRequest, $0.AuthReply>(
      '/Greeter/signUp',
      ($0.AuthRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AuthReply.fromBuffer(value));
  static final _$signIn = $grpc.ClientMethod<$0.AuthRequest, $0.AuthReply>(
      '/Greeter/signIn',
      ($0.AuthRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AuthReply.fromBuffer(value));
  static final _$changePassword =
      $grpc.ClientMethod<$0.ChangePasswordRequest, $0.ChangePasswordReply>(
          '/Greeter/changePassword',
          ($0.ChangePasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ChangePasswordReply.fromBuffer(value));
  static final _$createQuestion =
      $grpc.ClientMethod<$0.QuestionCreateProto, $0.QuestionCreateProtoResult>(
          '/Greeter/createQuestion',
          ($0.QuestionCreateProto value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.QuestionCreateProtoResult.fromBuffer(value));
  static final _$getQuestion =
      $grpc.ClientMethod<$0.QuestionGetProto, $0.QuestionGetProtoReply>(
          '/Greeter/getQuestion',
          ($0.QuestionGetProto value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.QuestionGetProtoReply.fromBuffer(value));
  static final _$getIdQuestion =
      $grpc.ClientMethod<$0.QuestionIdGetProto, $0.QuestionCreateProto>(
          '/Greeter/getIdQuestion',
          ($0.QuestionIdGetProto value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.QuestionCreateProto.fromBuffer(value));
  static final _$getResultTest =
      $grpc.ClientMethod<$0.GetResultRequest, $0.QuestionResultProto>(
          '/Greeter/getResultTest',
          ($0.GetResultRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.QuestionResultProto.fromBuffer(value));

  GreeterClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AuthReply> signUp($0.AuthRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signUp, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthReply> signIn($0.AuthRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signIn, request, options: options);
  }

  $grpc.ResponseFuture<$0.ChangePasswordReply> changePassword(
      $0.ChangePasswordRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changePassword, request, options: options);
  }

  $grpc.ResponseFuture<$0.QuestionCreateProtoResult> createQuestion(
      $0.QuestionCreateProto request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createQuestion, request, options: options);
  }

  $grpc.ResponseFuture<$0.QuestionGetProtoReply> getQuestion(
      $0.QuestionGetProto request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getQuestion, request, options: options);
  }

  $grpc.ResponseFuture<$0.QuestionCreateProto> getIdQuestion(
      $0.QuestionIdGetProto request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getIdQuestion, request, options: options);
  }

  $grpc.ResponseFuture<$0.QuestionResultProto> getResultTest(
      $0.GetResultRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getResultTest, request, options: options);
  }
}

abstract class GreeterServiceBase extends $grpc.Service {
  $core.String get $name => 'Greeter';

  GreeterServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AuthRequest, $0.AuthReply>(
        'signUp',
        signUp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AuthRequest.fromBuffer(value),
        ($0.AuthReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AuthRequest, $0.AuthReply>(
        'signIn',
        signIn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AuthRequest.fromBuffer(value),
        ($0.AuthReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ChangePasswordRequest, $0.ChangePasswordReply>(
            'changePassword',
            changePassword_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ChangePasswordRequest.fromBuffer(value),
            ($0.ChangePasswordReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QuestionCreateProto,
            $0.QuestionCreateProtoResult>(
        'createQuestion',
        createQuestion_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.QuestionCreateProto.fromBuffer(value),
        ($0.QuestionCreateProtoResult value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.QuestionGetProto, $0.QuestionGetProtoReply>(
            'getQuestion',
            getQuestion_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.QuestionGetProto.fromBuffer(value),
            ($0.QuestionGetProtoReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.QuestionIdGetProto, $0.QuestionCreateProto>(
            'getIdQuestion',
            getIdQuestion_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.QuestionIdGetProto.fromBuffer(value),
            ($0.QuestionCreateProto value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetResultRequest, $0.QuestionResultProto>(
        'getResultTest',
        getResultTest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetResultRequest.fromBuffer(value),
        ($0.QuestionResultProto value) => value.writeToBuffer()));
  }

  $async.Future<$0.AuthReply> signUp_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AuthRequest> request) async {
    return signUp(call, await request);
  }

  $async.Future<$0.AuthReply> signIn_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AuthRequest> request) async {
    return signIn(call, await request);
  }

  $async.Future<$0.ChangePasswordReply> changePassword_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ChangePasswordRequest> request) async {
    return changePassword(call, await request);
  }

  $async.Future<$0.QuestionCreateProtoResult> createQuestion_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.QuestionCreateProto> request) async {
    return createQuestion(call, await request);
  }

  $async.Future<$0.QuestionGetProtoReply> getQuestion_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.QuestionGetProto> request) async {
    return getQuestion(call, await request);
  }

  $async.Future<$0.QuestionCreateProto> getIdQuestion_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.QuestionIdGetProto> request) async {
    return getIdQuestion(call, await request);
  }

  $async.Future<$0.QuestionResultProto> getResultTest_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetResultRequest> request) async {
    return getResultTest(call, await request);
  }

  $async.Future<$0.AuthReply> signUp(
      $grpc.ServiceCall call, $0.AuthRequest request);
  $async.Future<$0.AuthReply> signIn(
      $grpc.ServiceCall call, $0.AuthRequest request);
  $async.Future<$0.ChangePasswordReply> changePassword(
      $grpc.ServiceCall call, $0.ChangePasswordRequest request);
  $async.Future<$0.QuestionCreateProtoResult> createQuestion(
      $grpc.ServiceCall call, $0.QuestionCreateProto request);
  $async.Future<$0.QuestionGetProtoReply> getQuestion(
      $grpc.ServiceCall call, $0.QuestionGetProto request);
  $async.Future<$0.QuestionCreateProto> getIdQuestion(
      $grpc.ServiceCall call, $0.QuestionIdGetProto request);
  $async.Future<$0.QuestionResultProto> getResultTest(
      $grpc.ServiceCall call, $0.GetResultRequest request);
}
