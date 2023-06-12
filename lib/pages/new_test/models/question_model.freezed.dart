// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) {
  return _QuestionModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get countPasses => throw _privateConstructorUsedError;
  String get rating => throw _privateConstructorUsedError;
  List<TestQuestion> get listTestQuestion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionModelCopyWith<QuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionModelCopyWith<$Res> {
  factory $QuestionModelCopyWith(
          QuestionModel value, $Res Function(QuestionModel) then) =
      _$QuestionModelCopyWithImpl<$Res, QuestionModel>;
  @useResult
  $Res call(
      {String title,
      String description,
      String username,
      String date,
      String countPasses,
      String rating,
      List<TestQuestion> listTestQuestion});
}

/// @nodoc
class _$QuestionModelCopyWithImpl<$Res, $Val extends QuestionModel>
    implements $QuestionModelCopyWith<$Res> {
  _$QuestionModelCopyWithImpl(this._value, this._then);

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
    Object? listTestQuestion = null,
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
      listTestQuestion: null == listTestQuestion
          ? _value.listTestQuestion
          : listTestQuestion // ignore: cast_nullable_to_non_nullable
              as List<TestQuestion>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionModelCopyWith<$Res>
    implements $QuestionModelCopyWith<$Res> {
  factory _$$_QuestionModelCopyWith(
          _$_QuestionModel value, $Res Function(_$_QuestionModel) then) =
      __$$_QuestionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      String username,
      String date,
      String countPasses,
      String rating,
      List<TestQuestion> listTestQuestion});
}

/// @nodoc
class __$$_QuestionModelCopyWithImpl<$Res>
    extends _$QuestionModelCopyWithImpl<$Res, _$_QuestionModel>
    implements _$$_QuestionModelCopyWith<$Res> {
  __$$_QuestionModelCopyWithImpl(
      _$_QuestionModel _value, $Res Function(_$_QuestionModel) _then)
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
    Object? listTestQuestion = null,
  }) {
    return _then(_$_QuestionModel(
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
      listTestQuestion: null == listTestQuestion
          ? _value._listTestQuestion
          : listTestQuestion // ignore: cast_nullable_to_non_nullable
              as List<TestQuestion>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionModel implements _QuestionModel {
  const _$_QuestionModel(
      {required this.title,
      required this.description,
      required this.username,
      required this.date,
      required this.countPasses,
      required this.rating,
      required final List<TestQuestion> listTestQuestion})
      : _listTestQuestion = listTestQuestion;

  factory _$_QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionModelFromJson(json);

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
  final List<TestQuestion> _listTestQuestion;
  @override
  List<TestQuestion> get listTestQuestion {
    if (_listTestQuestion is EqualUnmodifiableListView)
      return _listTestQuestion;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listTestQuestion);
  }

  @override
  String toString() {
    return 'QuestionModel(title: $title, description: $description, username: $username, date: $date, countPasses: $countPasses, rating: $rating, listTestQuestion: $listTestQuestion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.countPasses, countPasses) ||
                other.countPasses == countPasses) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality()
                .equals(other._listTestQuestion, _listTestQuestion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      username,
      date,
      countPasses,
      rating,
      const DeepCollectionEquality().hash(_listTestQuestion));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionModelCopyWith<_$_QuestionModel> get copyWith =>
      __$$_QuestionModelCopyWithImpl<_$_QuestionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionModelToJson(
      this,
    );
  }
}

abstract class _QuestionModel implements QuestionModel {
  const factory _QuestionModel(
      {required final String title,
      required final String description,
      required final String username,
      required final String date,
      required final String countPasses,
      required final String rating,
      required final List<TestQuestion> listTestQuestion}) = _$_QuestionModel;

  factory _QuestionModel.fromJson(Map<String, dynamic> json) =
      _$_QuestionModel.fromJson;

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
  List<TestQuestion> get listTestQuestion;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionModelCopyWith<_$_QuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
