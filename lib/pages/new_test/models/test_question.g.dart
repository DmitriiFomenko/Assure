// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TestQuestion _$$_TestQuestionFromJson(Map<String, dynamic> json) =>
    _$_TestQuestion(
      question: json['question'] as String,
      haveScore: json['haveScore'] as bool,
      shortQuestion: (json['shortQuestion'] as List<dynamic>)
          .map((e) => ShortQuestion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TestQuestionToJson(_$_TestQuestion instance) =>
    <String, dynamic>{
      'question': instance.question,
      'haveScore': instance.haveScore,
      'shortQuestion': instance.shortQuestion,
    };
