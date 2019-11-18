import '../enumerable.dart';

class RepeatEnumerable<T> extends Enumerable<T> {
  final T value;
  final int count;

  const RepeatEnumerable(this.value, this.count);

  @override
  Iterator<T> get iterator => iterate().iterator;

  Iterable<T> iterate() sync* {
    for (int i = 0; i < count; i++) {
      yield value;
    }
  }
}