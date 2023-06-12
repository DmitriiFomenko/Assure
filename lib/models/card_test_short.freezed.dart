// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_test_short.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardTestShort _$CardTestShortFromJson(Map<String, dynamic> json) {
  return _CardTestShort.fromJson(json);
}

/// @nodoc
mixin _$CardTestShort {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get countPasses => throw _privateConstructorUsedError;
  String get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardTestShortCopyWith<CardTestShort> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardTestShortCopyWith<$Res> {
  factory $CardTestShortCopyWith(
          CardTestShort value, $Res Function(CardTestShort) then) =
      _$CardTestShortCopyWithImpl<$Res, CardTestShort>;
  @useResult
  $Res call(
      {String title,
      String description,
      String username,
      String date,
      String countPasses,
      String rating});
}

/// @nodoc
class _$CardTestShortCopyWithImpl<$Res, $Val extends CardTestShort>
    implements $CardTestShortCopyWith<$Res> {
  _$CardTestShortCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? username = null,
    Object? date = null,
    Object? countPasses = null,
    Object? rating = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      countPasses: null == countPasses
          ? _value.countPasses
          : countPasses // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CardTestShortCopyWith<$Res>
    implements $CardTestShortCopyWith<$Res> {
  factory _$$_CardTestShortCopyWith(
          _$_CardTestShort value, $Res Function(_$_CardTestShort) then) =
      __$$_CardTestShortCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      String username,
      String date,
      String countPasses,
      String rating});
}

/// @nodoc
class __$$_CardTestShortCopyWithImpl<$Res>
    extends _$CardTestShortCopyWithImpl<$Res, _$_CardTestShort>
    implements _$$_CardTestShortCopyWith<$Res> {
  __$$_CardTestShortCopyWithImpl(
      _$_CardTestShort _value, $Res Function(_$_CardTestShort) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? username = null,
    Object? date = null,
    Object? countPasses = null,
    Object? rating = null,
  }) {
    return _then(_$_CardTestShort(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      countPasses: null == countPasses
          ? _value.countPasses
          : countPasses // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardTestShort implements _CardTestShort {
  const _$_CardTestShort(
      {required this.title,
      required this.description,
      required this.username,
      required this.date,
      required this.countPasses,
      required this.rating});

  factory _$_CardTestShort.fromJson(Map<String, dynamic> json) =>
      _$$_CardTestShortFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String username;
  @override
  final String date;
  @override
  final String countPasses;
  @override
  final String rating;

  @override
  String toString() {
    return 'CardTestShort(title: $title, description: $description, username: $username, date: $date, countPasses: $countPasses, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardTestShort &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.countPasses, countPasses) ||
                other.countPasses == countPasses) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, description, username, date, countPasses, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardTestShortCopyWith<_$_CardTestShort> get copyWith =>
      __$$_CardTestShortCopyWithImpl<_$_CardTestShort>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardTestShortToJson(
      this,
    );
  }
}

abstract class _CardTestShort implements CardTestShort {
  const factory _CardTestShort(
      {required final String title,
      required final String description,
      required final String username,
      required final String date,
      required final String countPasses,
      required final String rating}) = _$_CardTestShort;

  factory _CardTestShort.fromJson(Map<String, dynamic> json) =
      _$_CardTestShort.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String get username;
  @override
  String get date;
  @override
  String get countPasses;
  @override
  String get rating;
  @override
  @JsonKey(ignore: true)
  _$$_CardTestShortCopyWith<_$_CardTestShort> get copyWith =>
      throw _privateConstructorUsedError;
}
