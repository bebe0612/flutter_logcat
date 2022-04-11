// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tag_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TagModel _$TagModelFromJson(Map<String, dynamic> json) {
  return _TagModel.fromJson(json);
}

/// @nodoc
class _$TagModelTearOff {
  const _$TagModelTearOff();

  _TagModel call({required String text, int backgroundColor = 0x333333}) {
    return _TagModel(
      text: text,
      backgroundColor: backgroundColor,
    );
  }

  TagModel fromJson(Map<String, Object> json) {
    return TagModel.fromJson(json);
  }
}

/// @nodoc
const $TagModel = _$TagModelTearOff();

/// @nodoc
mixin _$TagModel {
  String get text => throw _privateConstructorUsedError;
  int get backgroundColor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagModelCopyWith<TagModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagModelCopyWith<$Res> {
  factory $TagModelCopyWith(TagModel value, $Res Function(TagModel) then) =
      _$TagModelCopyWithImpl<$Res>;
  $Res call({String text, int backgroundColor});
}

/// @nodoc
class _$TagModelCopyWithImpl<$Res> implements $TagModelCopyWith<$Res> {
  _$TagModelCopyWithImpl(this._value, this._then);

  final TagModel _value;
  // ignore: unused_field
  final $Res Function(TagModel) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? backgroundColor = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TagModelCopyWith<$Res> implements $TagModelCopyWith<$Res> {
  factory _$TagModelCopyWith(_TagModel value, $Res Function(_TagModel) then) =
      __$TagModelCopyWithImpl<$Res>;
  @override
  $Res call({String text, int backgroundColor});
}

/// @nodoc
class __$TagModelCopyWithImpl<$Res> extends _$TagModelCopyWithImpl<$Res>
    implements _$TagModelCopyWith<$Res> {
  __$TagModelCopyWithImpl(_TagModel _value, $Res Function(_TagModel) _then)
      : super(_value, (v) => _then(v as _TagModel));

  @override
  _TagModel get _value => super._value as _TagModel;

  @override
  $Res call({
    Object? text = freezed,
    Object? backgroundColor = freezed,
  }) {
    return _then(_TagModel(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TagModel implements _TagModel {
  _$_TagModel({required this.text, this.backgroundColor = 0x333333});

  factory _$_TagModel.fromJson(Map<String, dynamic> json) =>
      _$$_TagModelFromJson(json);

  @override
  final String text;
  @JsonKey(defaultValue: 0x333333)
  @override
  final int backgroundColor;

  @override
  String toString() {
    return 'TagModel(text: $text, backgroundColor: $backgroundColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TagModel &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.backgroundColor, backgroundColor) ||
                const DeepCollectionEquality()
                    .equals(other.backgroundColor, backgroundColor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(backgroundColor);

  @JsonKey(ignore: true)
  @override
  _$TagModelCopyWith<_TagModel> get copyWith =>
      __$TagModelCopyWithImpl<_TagModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TagModelToJson(this);
  }
}

abstract class _TagModel implements TagModel {
  factory _TagModel({required String text, int backgroundColor}) = _$_TagModel;

  factory _TagModel.fromJson(Map<String, dynamic> json) = _$_TagModel.fromJson;

  @override
  String get text => throw _privateConstructorUsedError;
  @override
  int get backgroundColor => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TagModelCopyWith<_TagModel> get copyWith =>
      throw _privateConstructorUsedError;
}
