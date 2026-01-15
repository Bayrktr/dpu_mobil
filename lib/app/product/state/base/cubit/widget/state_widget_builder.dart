part of 'base_cubit_widget.dart';

final class _StateWidgetBuilder<T, K, M> extends StatelessWidget {
  const _StateWidgetBuilder({
    required this.state,
    required this.initial,
    this.error,
    this.loading,
  });

  final BaseState<T, K, M> state;
  final InitialBuilder<T, K, M> initial;
  final ErrorBuilder<T, K, M>? error;
  final LoadingBuilder<T, K, M>? loading;

  @override
  Widget build(BuildContext context) {
    switch (state) {
      case BaseInitialModel():
        final initialState = state as BaseInitialModel<T, K, M>;
        return initial(initialState);

      case BaseLoadingModel():
        final loadingState = state as BaseLoadingModel<T, K, M>;
        return loading != null
            ? loading!(loadingState)
            : const Center(child: CircularProgressIndicator());

      case BaseErrorModel():
        final errorState = state as BaseErrorModel<T, K, M>;
        return error != null
            ? error!(errorState)
            : Center(
                child: Text(
                  errorState.data?.message ??
                      LocaleKeys.general_error_occurred.lang.tr,
                  style: TextStyle(
                    color: context.customTheme.black,
                  ),
                ),
              );
    }
  }
}
