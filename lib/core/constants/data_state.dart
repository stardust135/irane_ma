abstract class DataState<T> {
  final T? data;
  final String? error;

  const DataState(this.data, this.error);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(String error) : super(null, error);
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T? data) : super(data, null);
}
