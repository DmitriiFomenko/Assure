import 'package:assure/pages/new_test/models/test_question.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_model.g.dart';
part 'question_model.freezed.dart';

@freezed
class QuestionModel with _$QuestionModel {
  const factory QuestionModel({
    required String title,
    required String description,
    required String username,
    required String date,
    required String countPasses,
    required String rating,
    required List<TestQuestion> listTestQuestion,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(Map<String, Object?> json) =>
      _$QuestionModelFromJson(json);
}
