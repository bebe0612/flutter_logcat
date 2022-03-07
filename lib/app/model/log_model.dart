import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_model.freezed.dart';
part 'log_model.g.dart';

@freezed
class LogModel with _$LogModel {
  factory LogModel({
    DateTime? createdDt,
    @Default('') String type,
    @Default('') String title,
    @Default('') String detail,
    @Default('plain') String dataFormat,
    @Default('') String data,
  }) = _LogModel;

  factory LogModel.fromJson(Map<String, dynamic> json) =>
      _$LogModelFromJson(json);
}
