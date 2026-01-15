import 'package:dpu_mobil/app/product/state/base/cubit/model/error/base_error_data_model.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/model/initial/base_initial_data_model.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/model/loading/base_loading_data_model.dart';
import 'package:equatable/equatable.dart';

/// T for initial
/// K for error
/// M for loading

sealed class BaseState<T, K, M> extends Equatable{
  const BaseState();

  factory BaseState.initial({BaseInitialDataModel<T>? data}) {
    return BaseInitialModel<T, K, M>(
      data: data,
    );
  }

  factory BaseState.loading({BaseLoadingDataModel<M>? data}) {
    return BaseLoadingModel<T, K, M>(
      data: data,
    );
  }

  factory BaseState.error({BaseErrorDataModel<K>? data}) {
    return BaseErrorModel<T, K, M>(
      data: data,
    );
  }


  @override
  List<Object?> get props => [this];
}

class BaseInitialModel<T, K, M> extends BaseState<T, K, M> {
  final BaseInitialDataModel<T>? data;

  const BaseInitialModel({this.data});

  T? get model => data?.data;

  @override
  List<Object?> get props => [data];

  BaseInitialModel<T, K, M> copyWith({BaseInitialDataModel<T>? data}) {
    return BaseInitialModel<T, K, M>(
      data: data ?? this.data,
    );
  }
}

class BaseLoadingModel<T, K, M> extends BaseState<T, K, M> {
  final BaseLoadingDataModel<M>? data;

  BaseLoadingModel({this.data});

  @override
  List<Object?> get props => [data];

  BaseLoadingModel<T, K, M> copyWith({
    BaseLoadingDataModel<M>? data,
  }) =>
      BaseLoadingModel<T, K, M>(
        data: data ?? this.data,
      );
}

class BaseErrorModel<T, K, M> extends BaseState<T, K, M> {
  final BaseErrorDataModel<K>? data;

  BaseErrorModel({this.data});

  @override
  List<Object?> get props => [data];

  BaseErrorModel<T, K, M> copyWith({BaseErrorDataModel<K>? data}) =>
      BaseErrorModel<T, K, M>(
        data: data ?? this.data,
      );
}
