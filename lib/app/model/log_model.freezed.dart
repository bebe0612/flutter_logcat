// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'log_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogModel _$LogModelFromJson(Map<String, dynamic> json) {
  return _LogModel.fromJson(json);
}

/// @nodoc
class _$LogModelTearOff {
  const _$LogModelTearOff();

  _LogModel call(
      {required DateTime dateTime,
      String type = '',
      String method = '',
      String title = '',
      String detail = ''}) {
    return _LogModel(
      dateTime: dateTime,
      type: type,
      method: method,
      title: title,
      detail: detail,
    );
  }

  LogModel fromJson(Map<String, Object> json) {
    return LogModel.fromJson(json);
  }
}

/// @nodoc
const $LogModel = _$LogModelTearOff();

/// @nodoc
mixin _$LogModel {
  DateTime get dateTime => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogModelCopyWith<LogModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogModelCopyWith<$Res> {
  factory $LogModelCopyWith(LogModel value, $Res Function(LogModel) then) =
      _$LogModelCopyWithImpl<$Res>;
  $Res call(
      {DateTime dateTime,
      String type,
      String method,
      String title,
      String detail});
}

/// @nodoc
class _$LogModelCopyWithImpl<$Res> implements $LogModelCopyWith<$Res> {
  _$LogModelCopyWithImpl(this._value, this._then);

  final LogModel _value;
  // ignore: unused_field
  final $Res Function(LogModel) _then;

  @override
  $Res call({
    Object? dateTime = freezed,
    Object? type = freezed,
    Object? method = freezed,
    Object? title = freezed,
    Object? detail = freezed,
  }) {
    return _then(_value.copyWith(
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LogModelCopyWith<$Res> implements $LogModelCopyWith<$Res> {
  factory _$LogModelCopyWith(_LogModel value, $Res Function(_LogModel) then) =
      __$LogModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime dateTime,
      String type,
      String method,
      String title,
      String detail});
}

/// @nodoc
class __$LogModelCopyWithImpl<$Res> extends _$LogModelCopyWithImpl<$Res>
    implements _$LogModelCopyWith<$Res> {
  __$LogModelCopyWithImpl(_LogModel _value, $Res Function(_LogModel) _then)
      : super(_value, (v) => _then(v as _LogModel));

  @override
  _LogModel get _value => super._value as _LogModel;

  @override
  $Res call({
    Object? dateTime = freezed,
    Object? type = freezed,
    Object? method = freezed,
    Object? title = freezed,
    Object? detail = freezed,
  }) {
    return _then(_LogModel(
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LogModel implements _LogModel {
  _$_LogModel(
      {required this.dateTime,
      this.type = '',
      this.method = '',
      this.title = '',
      this.detail = ''});

  factory _$_LogModel.fromJson(Map<String, dynamic> json) =>
      _$$_LogModelFromJson(json);

  @override
  final DateTime dateTime;
  @JsonKey(defaultValue: '')
  @override
  final String type;
  @JsonKey(defaultValue: '')
  @override
  final String method;
  @JsonKey(defaultValue: '')
  @override
  final String title;
  @JsonKey(defaultValue: '')
  @override
  final String detail;

  @override
  String toString() {
    return 'LogModel(dateTime: $dateTime, type: $type, method: $method, title: $title, detail: $detail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LogModel &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.method, method) ||
                const DeepCollectionEquality().equals(other.method, method)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dateTime) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(method) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(detail);

  @JsonKey(ignore: true)
  @override
  _$LogModelCopyWith<_LogModel> get copyWith =>
      __$LogModelCopyWithImpl<_LogModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogModelToJson(this);
  }
}

abstract class _LogModel implements LogModel {
  factory _LogModel(
      {required DateTime dateTime,
      String type,
      String method,
      String title,
      String detail}) = _$_LogModel;

  factory _LogModel.fromJson(Map<String, dynamic> json) = _$_LogModel.fromJson;

  @override
  DateTime get dateTime => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  String get method => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get detail => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LogModelCopyWith<_LogModel> get copyWith =>
      throw _privateConstructorUsedError;
}
