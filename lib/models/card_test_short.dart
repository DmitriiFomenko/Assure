import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_test_short.g.dart';
part 'card_test_short.freezed.dart';

@freezed
class CardTestShort with _$CardTestShort {
  const factory CardTestShort({
    required String title,
    required String description,
    required String username,
    required String date,
    required String countPasses,
    required String rating,
    required String id,
  }) = _CardTestShort;

  factory CardTestShort.fromJson(Map<String, Object?> json) =>
      _$CardTestShortFromJson(json);
}
