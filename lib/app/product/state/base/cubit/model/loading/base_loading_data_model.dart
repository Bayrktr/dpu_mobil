import 'package:equatable/equatable.dart';

class BaseLoadingDataModel<T> with EquatableMixin {
  BaseLoadingDataModel({
    this.loadingPercentage = 0,
    this.message,
  });

  final double? loadingPercentage;
  final String? message;

  @override
  List<Object?> get props => [
        loadingPercentage,
        message,
      ];

  BaseLoadingDataModel<T> copyWith({
    double? loadingPercentage,
    String? message,
  }) =>
      BaseLoadingDataModel<T>(
        loadingPercentage: loadingPercentage ?? this.loadingPercentage,
        message: message ?? this.message,
      );
}
