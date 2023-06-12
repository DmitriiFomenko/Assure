// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'short_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShortQuestion _$ShortQuestionFromJson(Map<String, dynamic> json) {
  return _ShortQuestion.fromJson(json);
}

/// @nodoc
mixin _$ShortQuestion {
  double? get score => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  bool get isEnd => throw _privateConstructorUsedError;
  String get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShortQuestionCopyWith<ShortQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortQuestionCopyWith<$Res> {
  factory $ShortQuestionCopyWith(
          ShortQuestion value, $Res Function(ShortQuestion) then) =
      _$ShortQuestionCopyWithImpl<$Res, ShortQuestion>;
  @useResult
  $Res call({double? score, String answer, bool isEnd, String result});
}

/// @nodoc
class _$ShortQuestionCopyWithImpl<$Res, $Val extends ShortQuestion>
    implements $ShortQuestionCopyWith<$Res> {
  _$ShortQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = freezed,
    Object? answer = null,
    Object? isEnd = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      isEnd: null == isEnd
          ? _value.isEnd
          : isEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShortQuestionCopyWith<$Res>
    implements $ShortQuestionCopyWith<$Res> {
  factory _$$_ShortQuestionCopyWith(
          _$_ShortQuestion value, $Res Function(_$_ShortQuestion) then) =
      __$$_ShortQuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? score, String answer, bool isEnd, String result});
}

/// @nodoc
class __$$_ShortQuestionCopyWithImpl<$Res>
    extends _$ShortQuestionCopyWithImpl<$Res, _$_ShortQuestion>
    implements _$$_ShortQuestionCopyWith<$Res> {
  __$$_ShortQuestionCopyWithImpl(
      _$_ShortQuestion _value, $Res Function(_$_ShortQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = freezed,
    Object? answer = null,
    Object? isEnd = null,
    Object? result = null,
  }) {
    return _then(_$_ShortQuestion(
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      isEnd: null == isEnd
          ? _value.isEnd
          : isEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShortQuestion implements _ShortQuestion {
  const _$_ShortQuestion(
      {required this.score,
      required this.answer,
      required this.isEnd,
      required this.result});

  factory _$_ShortQuestion.fromJson(Map<String, dynamic> json) =>
      _$$_ShortQuestionFromJson(json);

  @override
  final double? score;
  @override
  final String answer;
  @override
  final bool isEnd;
  @override
  final String result;

  @override
  String toString() {
    return 'ShortQuestion(score: $score, answer: $answer, isEnd: $isEnd, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShortQuestion &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.isEnd, isEnd) || other.isEnd == isEnd) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, score, answer, isEnd, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShortQuestionCopyWith<_$_ShortQuestion> get copyWith =>
      __$$_ShortQuestionCopyWithImpl<_$_ShortQuestion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShortQuestionToJson(
      this,
    );
  }
}

abstract class _ShortQuestion implements ShortQuestion {
  const factory _ShortQuestion(
      {required final double? score,
      required final String answer,
      required final bool isEnd,
      required final String result}) = _$_ShortQuestion;

  factory _ShortQuestion.fromJson(Map<String, dynamic> json) =
      _$_ShortQuestion.fromJson;

  @override
  double? get score;
  @override
  String get answer;
  @override
  bool get isEnd;
  @override
  String get result;
  @override
  @JsonKey(ignore: true)
  _$$_ShortQuestionCopyWith<_$_ShortQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}
