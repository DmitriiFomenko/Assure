// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TestQuestion _$TestQuestionFromJson(Map<String, dynamic> json) {
  return _TestQuestion.fromJson(json);
}

/// @nodoc
mixin _$TestQuestion {
  String get question => throw _privateConstructorUsedError;
  bool get haveScore => throw _privateConstructorUsedError;
  List<ShortQuestion> get shortQuestion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestQuestionCopyWith<TestQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestQuestionCopyWith<$Res> {
  factory $TestQuestionCopyWith(
          TestQuestion value, $Res Function(TestQuestion) then) =
      _$TestQuestionCopyWithImpl<$Res, TestQuestion>;
  @useResult
  $Res call(
      {String question, bool haveScore, List<ShortQuestion> shortQuestion});
}

/// @nodoc
class _$TestQuestionCopyWithImpl<$Res, $Val extends TestQuestion>
    implements $TestQuestionCopyWith<$Res> {
  _$TestQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? haveScore = null,
    Object? shortQuestion = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      haveScore: null == haveScore
          ? _value.haveScore
          : haveScore // ignore: cast_nullable_to_non_nullable
              as bool,
      shortQuestion: null == shortQuestion
          ? _value.shortQuestion
          : shortQuestion // ignore: cast_nullable_to_non_nullable
              as List<ShortQuestion>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TestQuestionCopyWith<$Res>
    implements $TestQuestionCopyWith<$Res> {
  factory _$$_TestQuestionCopyWith(
          _$_TestQuestion value, $Res Function(_$_TestQuestion) then) =
      __$$_TestQuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String question, bool haveScore, List<ShortQuestion> shortQuestion});
}

/// @nodoc
class __$$_TestQuestionCopyWithImpl<$Res>
    extends _$TestQuestionCopyWithImpl<$Res, _$_TestQuestion>
    implements _$$_TestQuestionCopyWith<$Res> {
  __$$_TestQuestionCopyWithImpl(
      _$_TestQuestion _value, $Res Function(_$_TestQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? haveScore = null,
    Object? shortQuestion = null,
  }) {
    return _then(_$_TestQuestion(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      haveScore: null == haveScore
          ? _value.haveScore
          : haveScore // ignore: cast_nullable_to_non_nullable
              as bool,
      shortQuestion: null == shortQuestion
          ? _value._shortQuestion
          : shortQuestion // ignore: cast_nullable_to_non_nullable
              as List<ShortQuestion>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TestQuestion implements _TestQuestion {
  const _$_TestQuestion(
      {required this.question,
      required this.haveScore,
      required final List<ShortQuestion> shortQuestion})
      : _shortQuestion = shortQuestion;

  factory _$_TestQuestion.fromJson(Map<String, dynamic> json) =>
      _$$_TestQuestionFromJson(json);

  @override
  final String question;
  @override
  final bool haveScore;
  final List<ShortQuestion> _shortQuestion;
  @override
  List<ShortQuestion> get shortQuestion {
    if (_shortQuestion is EqualUnmodifiableListView) return _shortQuestion;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shortQuestion);
  }

  @override
  String toString() {
    return 'TestQuestion(question: $question, haveScore: $haveScore, shortQuestion: $shortQuestion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestQuestion &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.haveScore, haveScore) ||
                other.haveScore == haveScore) &&
            const DeepCollectionEquality()
                .equals(other._shortQuestion, _shortQuestion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, question, haveScore,
      const DeepCollectionEquality().hash(_shortQuestion));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestQuestionCopyWith<_$_TestQuestion> get copyWith =>
      __$$_TestQuestionCopyWithImpl<_$_TestQuestion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestQuestionToJson(
      this,
    );
  }
}

abstract class _TestQuestion implements TestQuestion {
  const factory _TestQuestion(
      {required final String question,
      required final bool haveScore,
      required final List<ShortQuestion> shortQuestion}) = _$_TestQuestion;

  factory _TestQuestion.fromJson(Map<String, dynamic> json) =
      _$_TestQuestion.fromJson;

  @override
  String get question;
  @override
  bool get haveScore;
  @override
  List<ShortQuestion> get shortQuestion;
  @override
  @JsonKey(ignore: true)
  _$$_TestQuestionCopyWith<_$_TestQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}
