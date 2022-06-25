import 'array_stack.dart';

bool isBalancedBrackets(String text) {
  ArrayStack<String> stack = ArrayStack<String>();

  final List<String> openBrackets = ['(', '{', '['];
  final Map<String, String> matchingBrackets = {
    ')': '(',
    '}': '{',
    ']': '[',
  };

  for (var i = 0; i < text.length; i++) {
    var currentChar = text[i];

    if (openBrackets.contains(currentChar)) {
      stack.push(currentChar);
    } else {
      if (stack.isEmpty) {
        return false;
      } else {
        if (stack.peak == matchingBrackets[currentChar]) {
          stack.pop();
        } else {
          return false;
        }
      }
    }
  }
  return stack.isEmpty;
}

void main() {
  print(isBalancedBrackets('([])(){}(())()()')); //true
  print(isBalancedBrackets('()()[{()})]')); //false
}
