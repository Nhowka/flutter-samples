sealed class LoadableValue<T> {
  const LoadableValue();

  const factory LoadableValue.loading({T? previousValue}) = Loading._;

  const factory LoadableValue.loaded(T value) = LoadedValue._;

  const factory LoadableValue.error(Exception error, {T? previousValue}) =
  Error._;

  bool get isLoading;

  bool get hasError;

  bool get hasValue;
}

final class Error<T> extends LoadableValue<T> {
  final T? previousValue;
  final Exception error;

  const Error._(this.error, {this.previousValue});

  @override
  bool get hasError => true;

  @override
  bool get hasValue => previousValue != null;

  @override
  bool get isLoading => false;
}

final class LoadedValue<T> extends LoadableValue<T> {
  final T value;

  const LoadedValue._(this.value);

  @override
  bool get hasError => false;

  @override
  bool get hasValue => true;

  @override
  bool get isLoading => false;

  LoadableValue<T> get loading => LoadableValue.loading(previousValue: value);
}

final class Loading<T> extends LoadableValue<T> {
  final T? previousValue;

  const Loading._({this.previousValue});

  @override
  bool get hasError => false;

  @override
  bool get hasValue => previousValue != null;

  @override
  bool get isLoading => true;
}