import 'package:freezed_annotation/freezed_annotation.dart';

part 'short_question.g.dart';
part 'short_question.freezed.dart';

@freezed
class ShortQuestion with _$ShortQuestion {
  const factory ShortQuestion({
    required double? score,
    required String answer,
    required bool isEnd,
    required String result,
  }) = _ShortQuestion;

  factory ShortQuestion.fromJson(Map<String, Object?> json) =>
      _$ShortQuestionFromJson(json);
}
