import 'package:assure/pages/new_test/models/short_question.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_question.g.dart';
part 'test_question.freezed.dart';

@freezed
class TestQuestion with _$TestQuestion {
  const factory TestQuestion({
    required String question,
    required bool haveScore,
    required List<ShortQuestion> shortQuestion,
  }) = _TestQuestion;

  factory TestQuestion.fromJson(Map<String, Object?> json) =>
      _$TestQuestionFromJson(json);
}
