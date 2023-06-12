import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.g.dart';
part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required ThemeMode theme,
    required String getCurrentLocale,
  }) = _AppState;

  factory AppState.fromJson(Map<String, Object?> json) =>
      _$AppStateFromJson(json);
}
