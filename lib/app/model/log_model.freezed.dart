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
      {DateTime? createdDt,
      String type = '',
      String title = '',
      String detail = '',
      String dataFormat = 'plain',
      String data = ''}) {
    return _LogModel(
      createdDt: createdDt,
      type: type,
      title: title,
      detail: detail,
      dataFormat: dataFormat,
      data: data,
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
  DateTime? get createdDt => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  String get dataFormat => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;

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
      {DateTime? createdDt,
      String type,
      String title,
      String detail,
      String dataFormat,
      String data});
}

/// @nodoc
class _$LogModelCopyWithImpl<$Res> implements $LogModelCopyWith<$Res> {
  _$LogModelCopyWithImpl(this._value, this._then);

  final LogModel _value;
  // ignore: unused_field
  final $Res Function(LogModel) _then;

  @override
  $Res call({
    Object? createdDt = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? detail = freezed,
    Object? dataFormat = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      createdDt: createdDt == freezed
          ? _value.createdDt
          : createdDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      dataFormat: dataFormat == freezed
          ? _value.dataFormat
          : dataFormat // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
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
      {DateTime? createdDt,
      String type,
      String title,
      String detail,
      String dataFormat,
      String data});
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
    Object? createdDt = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? detail = freezed,
    Object? dataFormat = freezed,
    Object? data = freezed,
  }) {
    return _then(_LogModel(
      createdDt: createdDt == freezed
          ? _value.createdDt
          : createdDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      dataFormat: dataFormat == freezed
          ? _value.dataFormat
          : dataFormat // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LogModel implements _LogModel {
  _$_LogModel(
      {this.createdDt,
      this.type = '',
      this.title = '',
      this.detail = '',
      this.dataFormat = 'plain',
      this.data = ''});

  factory _$_LogModel.fromJson(Map<String, dynamic> json) =>
      _$$_LogModelFromJson(json);

  @override
  final DateTime? createdDt;
  @JsonKey(defaultValue: '')
  @override
  final String type;
  @JsonKey(defaultValue: '')
  @override
  final String title;
  @JsonKey(defaultValue: '')
  @override
  final String detail;
  @JsonKey(defaultValue: 'plain')
  @override
  final String dataFormat;
  @JsonKey(defaultValue: '')
  @override
  final String data;

  @override
  String toString() {
    return 'LogModel(createdDt: $createdDt, type: $type, title: $title, detail: $detail, dataFormat: $dataFormat, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LogModel &&
            (identical(other.createdDt, createdDt) ||
                const DeepCollectionEquality()
                    .equals(other.createdDt, createdDt)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.dataFormat, dataFormat) ||
                const DeepCollectionEquality()
                    .equals(other.dataFormat, dataFormat)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(createdDt) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(dataFormat) ^
      const DeepCollectionEquality().hash(data);

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
      {DateTime? createdDt,
      String type,
      String title,
      String detail,
      String dataFormat,
      String data}) = _$_LogModel;

  factory _LogModel.fromJson(Map<String, dynamic> json) = _$_LogModel.fromJson;

  @override
  DateTime? get createdDt => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get detail => throw _privateConstructorUsedError;
  @override
  String get dataFormat => throw _privateConstructorUsedError;
  @override
  String get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LogModelCopyWith<_LogModel> get copyWith =>
      throw _privateConstructorUsedError;
}
