part of 'base_cubit_widget.dart';

mixin _BaseCubitWidgetMixin<T, K, M> on StatelessWidget {
  void _assertions(
    BlocType blocType,
    InitialBuilder<T, K, M>? initial,
    ErrorBuilder<T, K, M>? error,
    LoadingBuilder<T, K, M>? loading,
    ListenerFunction<T, K, M>? listener,
    Widget? listenerChild,
  ) {
    assert(
      (blocType != BlocType.listener || listenerChild == null) ||
          initial == null,
      _AssertErrorMessages.unneccesarryUseOfSuccess,
    );
    assert(
      (blocType != BlocType.listener || listenerChild != null) ||
          initial != null,
      _AssertErrorMessages.successMustBeProvidedWithoutListenerChild,
    );
    assert(
      blocType != BlocType.listener || listener != null,
      _AssertErrorMessages.listenerMustBeProvided,
    );
    assert(
      blocType != BlocType.builder || listener == null,
      _AssertErrorMessages.unneccesarryUseOfListener,
    );
    assert(
      blocType != BlocType.builder || initial != null,
      _AssertErrorMessages.successMustBeProvidedForBuilder,
    );
  }
}

@immutable
abstract final class _AssertErrorMessages {
  const _AssertErrorMessages._();

  static const String successMustBeProvidedForBuilder =
      'success must be provided when type is BlocType.builder';
  static const String successMustBeProvidedWithoutListenerChild =
      'success must be provided when type is BlocType.listener and listenerChild is null';
  static const String unneccesarryUseOfSuccess =
      "Unnecessary use of 'success', because listenerChild is not null";
  static const String unneccesarryUseOfListener =
      "Unnecessary use of 'listener', because type is BlocType.builder";
  static const String listenerMustBeProvided =
      'listener must be provided when type is BlocType.listener';
}
