import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.g.dart';
part 'account.freezed.dart';

@freezed
class Account with _$Account {
  const factory Account({
    required String login,
    required String password,
  }) = _Account;

  factory Account.fromJson(Map<String, Object?> json) =>
      _$AccountFromJson(json);
}
