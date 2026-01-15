import 'package:dpu_mobil/app/product/service/model/base_model.dart';

final class ResponseModel<T extends BaseModel<T>> {
  final String? message;
  final T? data;
  final int? statusCode;

  ResponseModel({
    this.message,
    this.data,
    this.statusCode,
  });

  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    return ResponseModel(
      message: json['message'] as String?,
      data: json['data'] as T?,
      statusCode: json['statusCode'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'data': data,
      'statusCode': statusCode,
    };
  }

  ResponseModel<T> copyWith({
    String? message,
    T? data,
    int? statusCode,
  }) {
    return ResponseModel<T>(
      message: message ?? this.message,
      data: data ?? this.data,
      statusCode: statusCode ?? this.statusCode,
    );
  }
}
