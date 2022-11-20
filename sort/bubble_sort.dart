import 'dart:math';

void main(List<String> args) {
  final seed = 100, rnd = Random(), length = 10;
  final List<int> randomList =
      List.generate(length, (i) => rnd.nextInt(seed), growable: false);

  print('before sort');
  print(randomList);
  print('');
  print('after sort');
  print(bubbleSort(randomList));
}

List<int> bubbleSort(List<int> list) {
  for (int i = 0; i < list.length - 1; ++i) {
    for (int j = 0; j < list.length - 1 - i; ++j) {
      if (list[j] > list[j + 1]) {
        final temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
  return list;
}
