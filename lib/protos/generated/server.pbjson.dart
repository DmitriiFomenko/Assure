///
//  Generated code. Do not modify.
//  source: server.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use authRequestDescriptor instead')
const AuthRequest$json = const {
  '1': 'AuthRequest',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 11, '6': '.AccountProto', '10': 'account'},
  ],
};

/// Descriptor for `AuthRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRequestDescriptor = $convert.base64Decode('CgtBdXRoUmVxdWVzdBInCgdhY2NvdW50GAEgASgLMg0uQWNjb3VudFByb3RvUgdhY2NvdW50');
@$core.Deprecated('Use authReplyDescriptor instead')
const AuthReply$json = const {
  '1': 'AuthReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `AuthReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authReplyDescriptor = $convert.base64Decode('CglBdXRoUmVwbHkSFgoGcmVzdWx0GAEgASgIUgZyZXN1bHQ=');
@$core.Deprecated('Use changePasswordRequestDescriptor instead')
const ChangePasswordRequest$json = const {
  '1': 'ChangePasswordRequest',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 11, '6': '.AccountProto', '10': 'account'},
    const {'1': 'newPassowrd', '3': 2, '4': 1, '5': 9, '10': 'newPassowrd'},
  ],
};

/// Descriptor for `ChangePasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changePasswordRequestDescriptor = $convert.base64Decode('ChVDaGFuZ2VQYXNzd29yZFJlcXVlc3QSJwoHYWNjb3VudBgBIAEoCzINLkFjY291bnRQcm90b1IHYWNjb3VudBIgCgtuZXdQYXNzb3dyZBgCIAEoCVILbmV3UGFzc293cmQ=');
@$core.Deprecated('Use changePasswordReplyDescriptor instead')
const ChangePasswordReply$json = const {
  '1': 'ChangePasswordReply',
  '2': const [
    const {'1': 'checkOldPassword', '3': 1, '4': 1, '5': 8, '10': 'checkOldPassword'},
    const {'1': 'result', '3': 2, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `ChangePasswordReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changePasswordReplyDescriptor = $convert.base64Decode('ChNDaGFuZ2VQYXNzd29yZFJlcGx5EioKEGNoZWNrT2xkUGFzc3dvcmQYASABKAhSEGNoZWNrT2xkUGFzc3dvcmQSFgoGcmVzdWx0GAIgASgIUgZyZXN1bHQ=');
@$core.Deprecated('Use accountProtoDescriptor instead')
const AccountProto$json = const {
  '1': 'AccountProto',
  '2': const [
    const {'1': 'login', '3': 1, '4': 1, '5': 9, '10': 'login'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `AccountProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountProtoDescriptor = $convert.base64Decode('CgxBY2NvdW50UHJvdG8SFAoFbG9naW4YASABKAlSBWxvZ2luEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZA==');
@$core.Deprecated('Use answerProtoDescriptor instead')
const AnswerProto$json = const {
  '1': 'AnswerProto',
  '2': const [
    const {'1': 'answer', '3': 1, '4': 1, '5': 9, '10': 'answer'},
    const {'1': 'score', '3': 2, '4': 1, '5': 9, '10': 'score'},
    const {'1': 'result', '3': 3, '4': 1, '5': 9, '10': 'result'},
    const {'1': 'isEnd', '3': 4, '4': 1, '5': 8, '10': 'isEnd'},
  ],
};

/// Descriptor for `AnswerProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List answerProtoDescriptor = $convert.base64Decode('CgtBbnN3ZXJQcm90bxIWCgZhbnN3ZXIYASABKAlSBmFuc3dlchIUCgVzY29yZRgCIAEoCVIFc2NvcmUSFgoGcmVzdWx0GAMgASgJUgZyZXN1bHQSFAoFaXNFbmQYBCABKAhSBWlzRW5k');
@$core.Deprecated('Use questionPageProtoDescriptor instead')
const QuestionPageProto$json = const {
  '1': 'QuestionPageProto',
  '2': const [
    const {'1': 'question', '3': 1, '4': 1, '5': 9, '10': 'question'},
    const {'1': 'listAnswers', '3': 2, '4': 3, '5': 11, '6': '.AnswerProto', '10': 'listAnswers'},
  ],
};

/// Descriptor for `QuestionPageProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List questionPageProtoDescriptor = $convert.base64Decode('ChFRdWVzdGlvblBhZ2VQcm90bxIaCghxdWVzdGlvbhgBIAEoCVIIcXVlc3Rpb24SLgoLbGlzdEFuc3dlcnMYAiADKAsyDC5BbnN3ZXJQcm90b1ILbGlzdEFuc3dlcnM=');
@$core.Deprecated('Use questionDescriptionProtoDescriptor instead')
const QuestionDescriptionProto$json = const {
  '1': 'QuestionDescriptionProto',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'date', '3': 3, '4': 1, '5': 9, '10': 'date'},
    const {'1': 'author', '3': 4, '4': 1, '5': 9, '10': 'author'},
    const {'1': 'rating', '3': 5, '4': 1, '5': 1, '10': 'rating'},
    const {'1': 'countPasses', '3': 6, '4': 1, '5': 3, '10': 'countPasses'},
    const {'1': 'id', '3': 7, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `QuestionDescriptionProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List questionDescriptionProtoDescriptor = $convert.base64Decode('ChhRdWVzdGlvbkRlc2NyaXB0aW9uUHJvdG8SFAoFdGl0bGUYASABKAlSBXRpdGxlEiAKC2Rlc2NyaXB0aW9uGAIgASgJUgtkZXNjcmlwdGlvbhISCgRkYXRlGAMgASgJUgRkYXRlEhYKBmF1dGhvchgEIAEoCVIGYXV0aG9yEhYKBnJhdGluZxgFIAEoAVIGcmF0aW5nEiAKC2NvdW50UGFzc2VzGAYgASgDUgtjb3VudFBhc3NlcxIOCgJpZBgHIAEoCVICaWQ=');
@$core.Deprecated('Use questionCreateProtoDescriptor instead')
const QuestionCreateProto$json = const {
  '1': 'QuestionCreateProto',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 11, '6': '.AccountProto', '10': 'account'},
    const {'1': 'description', '3': 2, '4': 1, '5': 11, '6': '.QuestionDescriptionProto', '10': 'description'},
    const {'1': 'questionPageProto', '3': 3, '4': 3, '5': 11, '6': '.QuestionPageProto', '10': 'questionPageProto'},
    const {'1': 'listResult', '3': 4, '4': 3, '5': 9, '10': 'listResult'},
  ],
};

/// Descriptor for `QuestionCreateProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List questionCreateProtoDescriptor = $convert.base64Decode('ChNRdWVzdGlvbkNyZWF0ZVByb3RvEicKB2FjY291bnQYASABKAsyDS5BY2NvdW50UHJvdG9SB2FjY291bnQSOwoLZGVzY3JpcHRpb24YAiABKAsyGS5RdWVzdGlvbkRlc2NyaXB0aW9uUHJvdG9SC2Rlc2NyaXB0aW9uEkAKEXF1ZXN0aW9uUGFnZVByb3RvGAMgAygLMhIuUXVlc3Rpb25QYWdlUHJvdG9SEXF1ZXN0aW9uUGFnZVByb3RvEh4KCmxpc3RSZXN1bHQYBCADKAlSCmxpc3RSZXN1bHQ=');
@$core.Deprecated('Use questionCreateProtoResultDescriptor instead')
const QuestionCreateProtoResult$json = const {
  '1': 'QuestionCreateProtoResult',
  '2': const [
    const {'1': 'created', '3': 1, '4': 1, '5': 8, '10': 'created'},
  ],
};

/// Descriptor for `QuestionCreateProtoResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List questionCreateProtoResultDescriptor = $convert.base64Decode('ChlRdWVzdGlvbkNyZWF0ZVByb3RvUmVzdWx0EhgKB2NyZWF0ZWQYASABKAhSB2NyZWF0ZWQ=');
@$core.Deprecated('Use questionResultProtoDescriptor instead')
const QuestionResultProto$json = const {
  '1': 'QuestionResultProto',
  '2': const [
    const {'1': 'variants', '3': 1, '4': 3, '5': 11, '6': '.VariantAndStats', '10': 'variants'},
    const {'1': 'sumCount', '3': 3, '4': 1, '5': 9, '10': 'sumCount'},
    const {'1': 'scoreSum', '3': 4, '4': 1, '5': 9, '10': 'scoreSum'},
    const {'1': 'scoreCount', '3': 5, '4': 1, '5': 9, '10': 'scoreCount'},
  ],
};

/// Descriptor for `QuestionResultProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List questionResultProtoDescriptor = $convert.base64Decode('ChNRdWVzdGlvblJlc3VsdFByb3RvEiwKCHZhcmlhbnRzGAEgAygLMhAuVmFyaWFudEFuZFN0YXRzUgh2YXJpYW50cxIaCghzdW1Db3VudBgDIAEoCVIIc3VtQ291bnQSGgoIc2NvcmVTdW0YBCABKAlSCHNjb3JlU3VtEh4KCnNjb3JlQ291bnQYBSABKAlSCnNjb3JlQ291bnQ=');
@$core.Deprecated('Use questionGetProtoDescriptor instead')
const QuestionGetProto$json = const {
  '1': 'QuestionGetProto',
};

/// Descriptor for `QuestionGetProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List questionGetProtoDescriptor = $convert.base64Decode('ChBRdWVzdGlvbkdldFByb3Rv');
@$core.Deprecated('Use questionGetProtoReplyDescriptor instead')
const QuestionGetProtoReply$json = const {
  '1': 'QuestionGetProtoReply',
  '2': const [
    const {'1': 'questionDescriptionProto', '3': 1, '4': 3, '5': 11, '6': '.QuestionDescriptionProto', '10': 'questionDescriptionProto'},
  ],
};

/// Descriptor for `QuestionGetProtoReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List questionGetProtoReplyDescriptor = $convert.base64Decode('ChVRdWVzdGlvbkdldFByb3RvUmVwbHkSVQoYcXVlc3Rpb25EZXNjcmlwdGlvblByb3RvGAEgAygLMhkuUXVlc3Rpb25EZXNjcmlwdGlvblByb3RvUhhxdWVzdGlvbkRlc2NyaXB0aW9uUHJvdG8=');
@$core.Deprecated('Use questionIdGetProtoDescriptor instead')
const QuestionIdGetProto$json = const {
  '1': 'QuestionIdGetProto',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `QuestionIdGetProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List questionIdGetProtoDescriptor = $convert.base64Decode('ChJRdWVzdGlvbklkR2V0UHJvdG8SDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use getResultRequestDescriptor instead')
const GetResultRequest$json = const {
  '1': 'GetResultRequest',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
    const {'1': 'score', '3': 2, '4': 1, '5': 9, '10': 'score'},
    const {'1': 'id', '3': 3, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetResultRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getResultRequestDescriptor = $convert.base64Decode('ChBHZXRSZXN1bHRSZXF1ZXN0EhYKBnJlc3VsdBgBIAEoCVIGcmVzdWx0EhQKBXNjb3JlGAIgASgJUgVzY29yZRIOCgJpZBgDIAEoCVICaWQ=');
@$core.Deprecated('Use variantAndStatsDescriptor instead')
const VariantAndStats$json = const {
  '1': 'VariantAndStats',
  '2': const [
    const {'1': 'variant', '3': 1, '4': 1, '5': 9, '10': 'variant'},
    const {'1': 'stats', '3': 2, '4': 1, '5': 9, '10': 'stats'},
  ],
};

/// Descriptor for `VariantAndStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List variantAndStatsDescriptor = $convert.base64Decode('Cg9WYXJpYW50QW5kU3RhdHMSGAoHdmFyaWFudBgBIAEoCVIHdmFyaWFudBIUCgVzdGF0cxgCIAEoCVIFc3RhdHM=');
