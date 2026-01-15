import 'package:dpu_mobil/app/core/extention/string/string_extention.dart';
import 'package:dpu_mobil/app/product/extention/theme/theme_extention.dart';
import 'package:dpu_mobil/app/product/state/base/cubit/base_state.dart';
import 'package:dpu_mobil/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'base_cubit_widget_mixin.dart';

part 'state_widget_builder.dart';

typedef InitialBuilder<T, K, M> = Widget Function(
  BaseInitialModel<T, K, M> state,
);

typedef ErrorBuilder<T, K, M> = Widget Function(
  BaseErrorModel<T, K, M> state,
)?;

typedef LoadingBuilder<T, K, M> = Widget Function(
  BaseLoadingModel<T, K, M> state,
)?;

typedef ListenerFunction<T, K, M> = void Function(
  BuildContext,
  BaseState<T, K, M>,
)?;

typedef ListenWhenFunction<T, K, M> = bool Function(
  BaseState<T, K, M>,
  BaseState<T, K, M>,
)?;

class BaseCubitWidget<T, K, M> extends StatelessWidget
    with _BaseCubitWidgetMixin<T, K, M> {
  BaseCubitWidget({
    super.key,
    required this.bloc,
    this.blocType = BlocType.builder,
    this.listener,
    this.listenerChild,
    this.listenWhen,
    required this.initial,
    this.error,
    this.loading,
  }) {
    _assertions(blocType, initial, error, loading, listener, listenerChild);
  }

  final StateStreamable<BaseState<T, K, M>> bloc;

  final BlocType blocType;

  final ListenerFunction<T, K, M>? listener;
  final Widget? listenerChild;
  final ListenWhenFunction<T, K, M>? listenWhen;

  final InitialBuilder<T, K, M> initial;
  final ErrorBuilder<T, K, M>? error;
  final LoadingBuilder<T, K, M>? loading;

  @override
  Widget build(BuildContext context) {
    switch (blocType) {
      case BlocType.builder:
        return BlocBuilder<StateStreamable<BaseState<T, K, M>>,
            BaseState<T, K, M>>(
          builder: _buildBlocBuilder,
          bloc: bloc,
        );

      case BlocType.listener:
        return BlocListener<StateStreamable<BaseState<T, K, M>>,
            BaseState<T, K, M>>(
          listener: listener!,
          bloc: bloc,
          listenWhen: listenWhen,
          child: listenerChild ?? _buildBlocBuilder(context, bloc.state),
        );

      case BlocType.both:
        return BlocConsumer<StateStreamable<BaseState<T, K, M>>,
            BaseState<T, K, M>>(
          bloc: bloc,
          builder: _buildBlocBuilder,
          listener: listener!,
        );
    }
  }

  Widget _buildBlocBuilder(BuildContext context, BaseState<T, K, M> state) {
    return BlocBuilder<StateStreamable<BaseState<T, K, M>>, BaseState<T, K, M>>(
      bloc: bloc,
      builder: (context, state) {
        return _StateWidgetBuilder(
          state: state,
          initial: initial,
          error: error,
          loading: loading,
        );
      },
    );
  }
}

enum BlocType {
  builder,
  listener,
  both,
}
