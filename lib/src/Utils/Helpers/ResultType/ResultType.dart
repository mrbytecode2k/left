enum ResultStatus { success, error }

class Result<T, E> {
  final E? error;
  final T? value;
  final ResultStatus status;

  Result.success(this.value)
      : status = ResultStatus.success,
        error = null;
  Result.Failure(this.error)
      : status = ResultStatus.error,
        value = null;

  Result(this.status, this.error, this.value);
}