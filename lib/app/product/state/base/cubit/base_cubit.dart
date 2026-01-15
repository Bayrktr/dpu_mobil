import 'package:bloc/bloc.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/model/error/base_error_data_model.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/model/initial/base_initial_data_model.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/model/loading/base_loading_data_model.dart';
import 'package:flutter/material.dart';

abstract class BaseCubit<T, K, M, S extends BaseState<T, K, M>>
    extends Cubit<S> {
  BaseCubit(super.state) {
    onInit();
  }

  @protected
  Future<void> onInit();

  bool get isInitial => state is BaseInitialModel;

  bool get isLoading => state is BaseLoadingModel;

  bool get isError => state is BaseErrorModel;

  BaseInitialModel<T, K, M>? get initialState =>
      state is BaseInitialModel<T, K, M>
          ? state as BaseInitialModel<T, K, M>
          : null;

  BaseLoadingModel<T, K, M>? get loadingState =>
      state is BaseLoadingModel<T, K, M>
          ? state as BaseLoadingModel<T, K, M>
          : null;

  BaseErrorModel<T, K, M>? get errorState => state is BaseErrorModel<T, K, M>
      ? state as BaseErrorModel<T, K, M>
      : null;

  BaseInitialDataModel<T>? get initialData => initialState?.data;

  BaseLoadingDataModel<M>? get loadingData => loadingState?.data;

  BaseErrorDataModel<K>? get errorData => errorState?.data;

  @override
  void emit(S state) {
    if (!isClosed) super.emit(state);
  }
}
