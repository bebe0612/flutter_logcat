// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LogModel _$$_LogModelFromJson(Map<String, dynamic> json) => _$_LogModel(
      createdDt: json['createdDt'] == null
          ? null
          : DateTime.parse(json['createdDt'] as String),
      type: json['type'] as String? ?? '',
      title: json['title'] as String? ?? '',
      detail: json['detail'] as String? ?? '',
      dataFormat: json['dataFormat'] as String? ?? 'plain',
      data: json['data'] as String? ?? '',
    );

Map<String, dynamic> _$$_LogModelToJson(_$_LogModel instance) =>
    <String, dynamic>{
      'createdDt': instance.createdDt?.toIso8601String(),
      'type': instance.type,
      'title': instance.title,
      'detail': instance.detail,
      'dataFormat': instance.dataFormat,
      'data': instance.data,
    };
