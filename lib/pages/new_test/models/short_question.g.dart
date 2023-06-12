// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'short_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShortQuestion _$$_ShortQuestionFromJson(Map<String, dynamic> json) =>
    _$_ShortQuestion(
      score: (json['score'] as num?)?.toDouble(),
      answer: json['answer'] as String,
      isEnd: json['isEnd'] as bool,
      result: json['result'] as String,
    );

Map<String, dynamic> _$$_ShortQuestionToJson(_$_ShortQuestion instance) =>
    <String, dynamic>{
      'score': instance.score,
      'answer': instance.answer,
      'isEnd': instance.isEnd,
      'result': instance.result,
    };
