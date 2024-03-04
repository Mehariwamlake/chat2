abstract class UseCase<R, P> {
  Future<R> call({required P params});
}
