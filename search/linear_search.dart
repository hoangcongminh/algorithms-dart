int linear_search(List<int> list, number) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == number) {
      return i;
    }
  }
  return -1;
}

void main() {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(linear_search(list, 5));
}
