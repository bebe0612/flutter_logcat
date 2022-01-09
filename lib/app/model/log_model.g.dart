// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LogModel _$$_LogModelFromJson(Map<String, dynamic> json) => _$_LogModel(
      dateTime: DateTime.parse(json['dateTime'] as String),
      type: json['type'] as String? ?? '',
      method: json['method'] as String? ?? '',
      title: json['title'] as String? ?? '',
      detail: json['detail'] as String? ?? '',
    );

Map<String, dynamic> _$$_LogModelToJson(_$_LogModel instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime.toIso8601String(),
      'type': instance.type,
      'method': instance.method,
      'title': instance.title,
      'detail': instance.detail,
    };
