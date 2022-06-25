class ArrayStack<T> {
  final List<T> _storage;
  ArrayStack() : _storage = <T>[];

  ArrayStack.of(Iterable<T> elements) : _storage = List<T>.of(elements);

  void push(T element) => _storage.add(element);

  T? pop() {
    if (_storage.isEmpty) {
      print('Stack has no data');
      return null;
    }
    return _storage.removeLast();
  }

  T? get peak {
    if (_storage.isEmpty) {
      print('Stack has no data');
      return null;
    }
    return _storage.last;
  }

  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => !isEmpty;

  @override
  String toString() {
    return '--- Top ---\n'
        '${_storage.reversed.join('\n')}'
        '\n-----------';
  }
}

void main() {
  ArrayStack<String> stack = ArrayStack<String>();

  stack.push('1');
  stack.push('2');
  stack.push('3');
  stack.push('4');
  stack.push('5');

  print(stack.toString());

  final element = stack.pop();
  print('Popped: $element');
  print(stack.toString());
}
