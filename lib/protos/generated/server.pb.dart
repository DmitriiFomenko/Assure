///
//  Generated code. Do not modify.
//  source: server.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class AuthRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthRequest', createEmptyInstance: create)
    ..aOM<AccountProto>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account', subBuilder: AccountProto.create)
    ..hasRequiredFields = false
  ;

  AuthRequest._() : super();
  factory AuthRequest({
    AccountProto? account,
  }) {
    final _result = create();
    if (account != null) {
      _result.account = account;
    }
    return _result;
  }
  factory AuthRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthRequest clone() => AuthRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthRequest copyWith(void Function(AuthRequest) updates) => super.copyWith((message) => updates(message as AuthRequest)) as AuthRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthRequest create() => AuthRequest._();
  AuthRequest createEmptyInstance() => create();
  static $pb.PbList<AuthRequest> createRepeated() => $pb.PbList<AuthRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthRequest>(create);
  static AuthRequest? _defaultInstance;

  @$pb.TagNumber(1)
  AccountProto get account => $_getN(0);
  @$pb.TagNumber(1)
  set account(AccountProto v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);
  @$pb.TagNumber(1)
  AccountProto ensureAccount() => $_ensure(0);
}

class AuthReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthReply', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  AuthReply._() : super();
  factory AuthReply({
    $core.bool? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory AuthReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthReply clone() => AuthReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthReply copyWith(void Function(AuthReply) updates) => super.copyWith((message) => updates(message as AuthReply)) as AuthReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthReply create() => AuthReply._();
  AuthReply createEmptyInstance() => create();
  static $pb.PbList<AuthReply> createRepeated() => $pb.PbList<AuthReply>();
  @$core.pragma('dart2js:noInline')
  static AuthReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthReply>(create);
  static AuthReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get result => $_getBF(0);
  @$pb.TagNumber(1)
  set result($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class ChangePasswordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChangePasswordRequest', createEmptyInstance: create)
    ..aOM<AccountProto>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account', subBuilder: AccountProto.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'newPassowrd', protoName: 'newPassowrd')
    ..hasRequiredFields = false
  ;

  ChangePasswordRequest._() : super();
  factory ChangePasswordRequest({
    AccountProto? account,
    $core.String? newPassowrd,
  }) {
    final _result = create();
    if (account != null) {
      _result.account = account;
    }
    if (newPassowrd != null) {
      _result.newPassowrd = newPassowrd;
    }
    return _result;
  }
  factory ChangePasswordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChangePasswordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChangePasswordRequest clone() => ChangePasswordRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChangePasswordRequest copyWith(void Function(ChangePasswordRequest) updates) => super.copyWith((message) => updates(message as ChangePasswordRequest)) as ChangePasswordRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChangePasswordRequest create() => ChangePasswordRequest._();
  ChangePasswordRequest createEmptyInstance() => create();
  static $pb.PbList<ChangePasswordRequest> createRepeated() => $pb.PbList<ChangePasswordRequest>();
  @$core.pragma('dart2js:noInline')
  static ChangePasswordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangePasswordRequest>(create);
  static ChangePasswordRequest? _defaultInstance;

  @$pb.TagNumber(1)
  AccountProto get account => $_getN(0);
  @$pb.TagNumber(1)
  set account(AccountProto v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);
  @$pb.TagNumber(1)
  AccountProto ensureAccount() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get newPassowrd => $_getSZ(1);
  @$pb.TagNumber(2)
  set newPassowrd($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNewPassowrd() => $_has(1);
  @$pb.TagNumber(2)
  void clearNewPassowrd() => clearField(2);
}

class ChangePasswordReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChangePasswordReply', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'checkOldPassword', protoName: 'checkOldPassword')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  ChangePasswordReply._() : super();
  factory ChangePasswordReply({
    $core.bool? checkOldPassword,
    $core.bool? result,
  }) {
    final _result = create();
    if (checkOldPassword != null) {
      _result.checkOldPassword = checkOldPassword;
    }
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory ChangePasswordReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChangePasswordReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChangePasswordReply clone() => ChangePasswordReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChangePasswordReply copyWith(void Function(ChangePasswordReply) updates) => super.copyWith((message) => updates(message as ChangePasswordReply)) as ChangePasswordReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChangePasswordReply create() => ChangePasswordReply._();
  ChangePasswordReply createEmptyInstance() => create();
  static $pb.PbList<ChangePasswordReply> createRepeated() => $pb.PbList<ChangePasswordReply>();
  @$core.pragma('dart2js:noInline')
  static ChangePasswordReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangePasswordReply>(create);
  static ChangePasswordReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get checkOldPassword => $_getBF(0);
  @$pb.TagNumber(1)
  set checkOldPassword($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCheckOldPassword() => $_has(0);
  @$pb.TagNumber(1)
  void clearCheckOldPassword() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get result => $_getBF(1);
  @$pb.TagNumber(2)
  set result($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearResult() => clearField(2);
}

class AccountProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountProto', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'login')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  AccountProto._() : super();
  factory AccountProto({
    $core.String? login,
    $core.String? password,
  }) {
    final _result = create();
    if (login != null) {
      _result.login = login;
    }
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory AccountProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountProto clone() => AccountProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountProto copyWith(void Function(AccountProto) updates) => super.copyWith((message) => updates(message as AccountProto)) as AccountProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountProto create() => AccountProto._();
  AccountProto createEmptyInstance() => create();
  static $pb.PbList<AccountProto> createRepeated() => $pb.PbList<AccountProto>();
  @$core.pragma('dart2js:noInline')
  static AccountProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountProto>(create);
  static AccountProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get login => $_getSZ(0);
  @$pb.TagNumber(1)
  set login($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLogin() => $_has(0);
  @$pb.TagNumber(1)
  void clearLogin() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class AnswerProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AnswerProto', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'answer')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'score')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isEnd', protoName: 'isEnd')
    ..hasRequiredFields = false
  ;

  AnswerProto._() : super();
  factory AnswerProto({
    $core.String? answer,
    $core.String? score,
    $core.String? result,
    $core.bool? isEnd,
  }) {
    final _result = create();
    if (answer != null) {
      _result.answer = answer;
    }
    if (score != null) {
      _result.score = score;
    }
    if (result != null) {
      _result.result = result;
    }
    if (isEnd != null) {
      _result.isEnd = isEnd;
    }
    return _result;
  }
  factory AnswerProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnswerProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnswerProto clone() => AnswerProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnswerProto copyWith(void Function(AnswerProto) updates) => super.copyWith((message) => updates(message as AnswerProto)) as AnswerProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AnswerProto create() => AnswerProto._();
  AnswerProto createEmptyInstance() => create();
  static $pb.PbList<AnswerProto> createRepeated() => $pb.PbList<AnswerProto>();
  @$core.pragma('dart2js:noInline')
  static AnswerProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnswerProto>(create);
  static AnswerProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get answer => $_getSZ(0);
  @$pb.TagNumber(1)
  set answer($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAnswer() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnswer() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get score => $_getSZ(1);
  @$pb.TagNumber(2)
  set score($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasScore() => $_has(1);
  @$pb.TagNumber(2)
  void clearScore() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get result => $_getSZ(2);
  @$pb.TagNumber(3)
  set result($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasResult() => $_has(2);
  @$pb.TagNumber(3)
  void clearResult() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isEnd => $_getBF(3);
  @$pb.TagNumber(4)
  set isEnd($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsEnd() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsEnd() => clearField(4);
}

class QuestionPageProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QuestionPageProto', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'question')
    ..pc<AnswerProto>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'listAnswers', $pb.PbFieldType.PM, protoName: 'listAnswers', subBuilder: AnswerProto.create)
    ..hasRequiredFields = false
  ;

  QuestionPageProto._() : super();
  factory QuestionPageProto({
    $core.String? question,
    $core.Iterable<AnswerProto>? listAnswers,
  }) {
    final _result = create();
    if (question != null) {
      _result.question = question;
    }
    if (listAnswers != null) {
      _result.listAnswers.addAll(listAnswers);
    }
    return _result;
  }
  factory QuestionPageProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuestionPageProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuestionPageProto clone() => QuestionPageProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuestionPageProto copyWith(void Function(QuestionPageProto) updates) => super.copyWith((message) => updates(message as QuestionPageProto)) as QuestionPageProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QuestionPageProto create() => QuestionPageProto._();
  QuestionPageProto createEmptyInstance() => create();
  static $pb.PbList<QuestionPageProto> createRepeated() => $pb.PbList<QuestionPageProto>();
  @$core.pragma('dart2js:noInline')
  static QuestionPageProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuestionPageProto>(create);
  static QuestionPageProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get question => $_getSZ(0);
  @$pb.TagNumber(1)
  set question($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuestion() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuestion() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<AnswerProto> get listAnswers => $_getList(1);
}

class QuestionDescriptionProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QuestionDescriptionProto', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'date')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'author')
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rating', $pb.PbFieldType.OD)
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countPasses', protoName: 'countPasses')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  QuestionDescriptionProto._() : super();
  factory QuestionDescriptionProto({
    $core.String? title,
    $core.String? description,
    $core.String? date,
    $core.String? author,
    $core.double? rating,
    $fixnum.Int64? countPasses,
    $core.String? id,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (description != null) {
      _result.description = description;
    }
    if (date != null) {
      _result.date = date;
    }
    if (author != null) {
      _result.author = author;
    }
    if (rating != null) {
      _result.rating = rating;
    }
    if (countPasses != null) {
      _result.countPasses = countPasses;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory QuestionDescriptionProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuestionDescriptionProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuestionDescriptionProto clone() => QuestionDescriptionProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuestionDescriptionProto copyWith(void Function(QuestionDescriptionProto) updates) => super.copyWith((message) => updates(message as QuestionDescriptionProto)) as QuestionDescriptionProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QuestionDescriptionProto create() => QuestionDescriptionProto._();
  QuestionDescriptionProto createEmptyInstance() => create();
  static $pb.PbList<QuestionDescriptionProto> createRepeated() => $pb.PbList<QuestionDescriptionProto>();
  @$core.pragma('dart2js:noInline')
  static QuestionDescriptionProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuestionDescriptionProto>(create);
  static QuestionDescriptionProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get date => $_getSZ(2);
  @$pb.TagNumber(3)
  set date($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearDate() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get author => $_getSZ(3);
  @$pb.TagNumber(4)
  set author($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAuthor() => $_has(3);
  @$pb.TagNumber(4)
  void clearAuthor() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get rating => $_getN(4);
  @$pb.TagNumber(5)
  set rating($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRating() => $_has(4);
  @$pb.TagNumber(5)
  void clearRating() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get countPasses => $_getI64(5);
  @$pb.TagNumber(6)
  set countPasses($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCountPasses() => $_has(5);
  @$pb.TagNumber(6)
  void clearCountPasses() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get id => $_getSZ(6);
  @$pb.TagNumber(7)
  set id($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasId() => $_has(6);
  @$pb.TagNumber(7)
  void clearId() => clearField(7);
}

class QuestionCreateProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QuestionCreateProto', createEmptyInstance: create)
    ..aOM<AccountProto>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account', subBuilder: AccountProto.create)
    ..aOM<QuestionDescriptionProto>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description', subBuilder: QuestionDescriptionProto.create)
    ..pc<QuestionPageProto>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'questionPageProto', $pb.PbFieldType.PM, protoName: 'questionPageProto', subBuilder: QuestionPageProto.create)
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'listResult', protoName: 'listResult')
    ..hasRequiredFields = false
  ;

  QuestionCreateProto._() : super();
  factory QuestionCreateProto({
    AccountProto? account,
    QuestionDescriptionProto? description,
    $core.Iterable<QuestionPageProto>? questionPageProto,
    $core.Iterable<$core.String>? listResult,
  }) {
    final _result = create();
    if (account != null) {
      _result.account = account;
    }
    if (description != null) {
      _result.description = description;
    }
    if (questionPageProto != null) {
      _result.questionPageProto.addAll(questionPageProto);
    }
    if (listResult != null) {
      _result.listResult.addAll(listResult);
    }
    return _result;
  }
  factory QuestionCreateProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuestionCreateProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuestionCreateProto clone() => QuestionCreateProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuestionCreateProto copyWith(void Function(QuestionCreateProto) updates) => super.copyWith((message) => updates(message as QuestionCreateProto)) as QuestionCreateProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QuestionCreateProto create() => QuestionCreateProto._();
  QuestionCreateProto createEmptyInstance() => create();
  static $pb.PbList<QuestionCreateProto> createRepeated() => $pb.PbList<QuestionCreateProto>();
  @$core.pragma('dart2js:noInline')
  static QuestionCreateProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuestionCreateProto>(create);
  static QuestionCreateProto? _defaultInstance;

  @$pb.TagNumber(1)
  AccountProto get account => $_getN(0);
  @$pb.TagNumber(1)
  set account(AccountProto v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);
  @$pb.TagNumber(1)
  AccountProto ensureAccount() => $_ensure(0);

  @$pb.TagNumber(2)
  QuestionDescriptionProto get description => $_getN(1);
  @$pb.TagNumber(2)
  set description(QuestionDescriptionProto v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);
  @$pb.TagNumber(2)
  QuestionDescriptionProto ensureDescription() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<QuestionPageProto> get questionPageProto => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get listResult => $_getList(3);
}

class QuestionCreateProtoResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QuestionCreateProtoResult', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'created')
    ..hasRequiredFields = false
  ;

  QuestionCreateProtoResult._() : super();
  factory QuestionCreateProtoResult({
    $core.bool? created,
  }) {
    final _result = create();
    if (created != null) {
      _result.created = created;
    }
    return _result;
  }
  factory QuestionCreateProtoResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuestionCreateProtoResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuestionCreateProtoResult clone() => QuestionCreateProtoResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuestionCreateProtoResult copyWith(void Function(QuestionCreateProtoResult) updates) => super.copyWith((message) => updates(message as QuestionCreateProtoResult)) as QuestionCreateProtoResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QuestionCreateProtoResult create() => QuestionCreateProtoResult._();
  QuestionCreateProtoResult createEmptyInstance() => create();
  static $pb.PbList<QuestionCreateProtoResult> createRepeated() => $pb.PbList<QuestionCreateProtoResult>();
  @$core.pragma('dart2js:noInline')
  static QuestionCreateProtoResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuestionCreateProtoResult>(create);
  static QuestionCreateProtoResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get created => $_getBF(0);
  @$pb.TagNumber(1)
  set created($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreated() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreated() => clearField(1);
}

class QuestionResultProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QuestionResultProto', createEmptyInstance: create)
    ..pc<VariantAndStats>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'variants', $pb.PbFieldType.PM, subBuilder: VariantAndStats.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sumCount', protoName: 'sumCount')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scoreSum', protoName: 'scoreSum')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scoreCount', protoName: 'scoreCount')
    ..hasRequiredFields = false
  ;

  QuestionResultProto._() : super();
  factory QuestionResultProto({
    $core.Iterable<VariantAndStats>? variants,
    $core.String? sumCount,
    $core.String? scoreSum,
    $core.String? scoreCount,
  }) {
    final _result = create();
    if (variants != null) {
      _result.variants.addAll(variants);
    }
    if (sumCount != null) {
      _result.sumCount = sumCount;
    }
    if (scoreSum != null) {
      _result.scoreSum = scoreSum;
    }
    if (scoreCount != null) {
      _result.scoreCount = scoreCount;
    }
    return _result;
  }
  factory QuestionResultProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuestionResultProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuestionResultProto clone() => QuestionResultProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuestionResultProto copyWith(void Function(QuestionResultProto) updates) => super.copyWith((message) => updates(message as QuestionResultProto)) as QuestionResultProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QuestionResultProto create() => QuestionResultProto._();
  QuestionResultProto createEmptyInstance() => create();
  static $pb.PbList<QuestionResultProto> createRepeated() => $pb.PbList<QuestionResultProto>();
  @$core.pragma('dart2js:noInline')
  static QuestionResultProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuestionResultProto>(create);
  static QuestionResultProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<VariantAndStats> get variants => $_getList(0);

  @$pb.TagNumber(3)
  $core.String get sumCount => $_getSZ(1);
  @$pb.TagNumber(3)
  set sumCount($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasSumCount() => $_has(1);
  @$pb.TagNumber(3)
  void clearSumCount() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get scoreSum => $_getSZ(2);
  @$pb.TagNumber(4)
  set scoreSum($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasScoreSum() => $_has(2);
  @$pb.TagNumber(4)
  void clearScoreSum() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get scoreCount => $_getSZ(3);
  @$pb.TagNumber(5)
  set scoreCount($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasScoreCount() => $_has(3);
  @$pb.TagNumber(5)
  void clearScoreCount() => clearField(5);
}

class QuestionGetProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QuestionGetProto', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  QuestionGetProto._() : super();
  factory QuestionGetProto() => create();
  factory QuestionGetProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuestionGetProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuestionGetProto clone() => QuestionGetProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuestionGetProto copyWith(void Function(QuestionGetProto) updates) => super.copyWith((message) => updates(message as QuestionGetProto)) as QuestionGetProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QuestionGetProto create() => QuestionGetProto._();
  QuestionGetProto createEmptyInstance() => create();
  static $pb.PbList<QuestionGetProto> createRepeated() => $pb.PbList<QuestionGetProto>();
  @$core.pragma('dart2js:noInline')
  static QuestionGetProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuestionGetProto>(create);
  static QuestionGetProto? _defaultInstance;
}

class QuestionGetProtoReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QuestionGetProtoReply', createEmptyInstance: create)
    ..pc<QuestionDescriptionProto>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'questionDescriptionProto', $pb.PbFieldType.PM, protoName: 'questionDescriptionProto', subBuilder: QuestionDescriptionProto.create)
    ..hasRequiredFields = false
  ;

  QuestionGetProtoReply._() : super();
  factory QuestionGetProtoReply({
    $core.Iterable<QuestionDescriptionProto>? questionDescriptionProto,
  }) {
    final _result = create();
    if (questionDescriptionProto != null) {
      _result.questionDescriptionProto.addAll(questionDescriptionProto);
    }
    return _result;
  }
  factory QuestionGetProtoReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuestionGetProtoReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuestionGetProtoReply clone() => QuestionGetProtoReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuestionGetProtoReply copyWith(void Function(QuestionGetProtoReply) updates) => super.copyWith((message) => updates(message as QuestionGetProtoReply)) as QuestionGetProtoReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QuestionGetProtoReply create() => QuestionGetProtoReply._();
  QuestionGetProtoReply createEmptyInstance() => create();
  static $pb.PbList<QuestionGetProtoReply> createRepeated() => $pb.PbList<QuestionGetProtoReply>();
  @$core.pragma('dart2js:noInline')
  static QuestionGetProtoReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuestionGetProtoReply>(create);
  static QuestionGetProtoReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<QuestionDescriptionProto> get questionDescriptionProto => $_getList(0);
}

class QuestionIdGetProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QuestionIdGetProto', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  QuestionIdGetProto._() : super();
  factory QuestionIdGetProto({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory QuestionIdGetProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuestionIdGetProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuestionIdGetProto clone() => QuestionIdGetProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuestionIdGetProto copyWith(void Function(QuestionIdGetProto) updates) => super.copyWith((message) => updates(message as QuestionIdGetProto)) as QuestionIdGetProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QuestionIdGetProto create() => QuestionIdGetProto._();
  QuestionIdGetProto createEmptyInstance() => create();
  static $pb.PbList<QuestionIdGetProto> createRepeated() => $pb.PbList<QuestionIdGetProto>();
  @$core.pragma('dart2js:noInline')
  static QuestionIdGetProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuestionIdGetProto>(create);
  static QuestionIdGetProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetResultRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetResultRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'score')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetResultRequest._() : super();
  factory GetResultRequest({
    $core.String? result,
    $core.String? score,
    $core.String? id,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    if (score != null) {
      _result.score = score;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetResultRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetResultRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetResultRequest clone() => GetResultRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetResultRequest copyWith(void Function(GetResultRequest) updates) => super.copyWith((message) => updates(message as GetResultRequest)) as GetResultRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetResultRequest create() => GetResultRequest._();
  GetResultRequest createEmptyInstance() => create();
  static $pb.PbList<GetResultRequest> createRepeated() => $pb.PbList<GetResultRequest>();
  @$core.pragma('dart2js:noInline')
  static GetResultRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetResultRequest>(create);
  static GetResultRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get score => $_getSZ(1);
  @$pb.TagNumber(2)
  set score($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasScore() => $_has(1);
  @$pb.TagNumber(2)
  void clearScore() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get id => $_getSZ(2);
  @$pb.TagNumber(3)
  set id($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasId() => $_has(2);
  @$pb.TagNumber(3)
  void clearId() => clearField(3);
}

class VariantAndStats extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VariantAndStats', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'variant')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stats')
    ..hasRequiredFields = false
  ;

  VariantAndStats._() : super();
  factory VariantAndStats({
    $core.String? variant,
    $core.String? stats,
  }) {
    final _result = create();
    if (variant != null) {
      _result.variant = variant;
    }
    if (stats != null) {
      _result.stats = stats;
    }
    return _result;
  }
  factory VariantAndStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VariantAndStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VariantAndStats clone() => VariantAndStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VariantAndStats copyWith(void Function(VariantAndStats) updates) => super.copyWith((message) => updates(message as VariantAndStats)) as VariantAndStats; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VariantAndStats create() => VariantAndStats._();
  VariantAndStats createEmptyInstance() => create();
  static $pb.PbList<VariantAndStats> createRepeated() => $pb.PbList<VariantAndStats>();
  @$core.pragma('dart2js:noInline')
  static VariantAndStats getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VariantAndStats>(create);
  static VariantAndStats? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get variant => $_getSZ(0);
  @$pb.TagNumber(1)
  set variant($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVariant() => $_has(0);
  @$pb.TagNumber(1)
  void clearVariant() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get stats => $_getSZ(1);
  @$pb.TagNumber(2)
  set stats($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStats() => $_has(1);
  @$pb.TagNumber(2)
  void clearStats() => clearField(2);
}

