import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_model.freezed.dart';
part 'log_model.g.dart';

@freezed
class LogModel with _$LogModel {
  factory LogModel({
    required String type,
    required String title,
    required String detail,
  }) = _LogModel;

  factory LogModel.fromJson(Map<String, dynamic> json) =>
      _$LogModelFromJson(json);
}

enum LogType {
  network,
  pageEvent,
  pageStateChange,
  navigation,
}
