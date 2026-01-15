import 'package:equatable/equatable.dart';

class BaseErrorDataModel<T> with EquatableMixin {
  BaseErrorDataModel({
    this.statusCode,
    this.message,
  });

  final int? statusCode;
  final String? message;

  @override
  List<Object?> get props => [
        statusCode,
        message,
      ];

  BaseErrorDataModel<T> copyWith({
    int? statusCode,
    String? message,
  }) =>
      BaseErrorDataModel(
        statusCode: statusCode ?? this.statusCode,
        message: message ?? this.message,
      );
}
