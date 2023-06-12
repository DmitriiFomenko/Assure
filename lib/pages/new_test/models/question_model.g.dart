// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionModel _$$_QuestionModelFromJson(Map<String, dynamic> json) =>
    _$_QuestionModel(
      title: json['title'] as String,
      description: json['description'] as String,
      username: json['username'] as String,
      date: json['date'] as String,
      countPasses: json['countPasses'] as String,
      rating: json['rating'] as String,
      listTestQuestion: (json['listTestQuestion'] as List<dynamic>)
          .map((e) => TestQuestion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QuestionModelToJson(_$_QuestionModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'username': instance.username,
      'date': instance.date,
      'countPasses': instance.countPasses,
      'rating': instance.rating,
      'listTestQuestion': instance.listTestQuestion,
    };
