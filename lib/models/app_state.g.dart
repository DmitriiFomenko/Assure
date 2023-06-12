// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppState _$$_AppStateFromJson(Map<String, dynamic> json) => _$_AppState(
      theme: $enumDecode(_$ThemeModeEnumMap, json['theme']),
      getCurrentLocale: json['getCurrentLocale'] as String,
    );

Map<String, dynamic> _$$_AppStateToJson(_$_AppState instance) =>
    <String, dynamic>{
      'theme': _$ThemeModeEnumMap[instance.theme]!,
      'getCurrentLocale': instance.getCurrentLocale,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
