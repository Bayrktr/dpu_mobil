import 'package:equatable/equatable.dart';

class BaseInitialDataModel<T> with EquatableMixin {
  BaseInitialDataModel({this.data});

  final T? data;

  @override
  List<Object?> get props => [data];

  BaseInitialDataModel<T> copyWith({T? data}) => BaseInitialDataModel(
        data: data ?? this.data,
      );
}
