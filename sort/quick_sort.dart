import 'dart:math';

List<int> quickSort(List<int> list) {
  if (list.length <= 1) {
    return list;
  } else {
    int pivot = list[0];
    List<int> less = [];
    List<int> greater = [];
    for (int i = 1; i < list.length; i++) {
      if (list[i] <= pivot) {
        less.add(list[i]);
      } else {
        greater.add(list[i]);
      }
    }
    return quickSort(less) + [pivot] + quickSort(greater);
  }
}

void main() {
  List<int> randomList = [];
  Random random = Random();
  for (int i = 0; i < 10; i++) {
    randomList.add(random.nextInt(100));
  }
  print('before sort');
  print(randomList);
  print('');
  print('after sort');
  print(quickSort(randomList));
}
