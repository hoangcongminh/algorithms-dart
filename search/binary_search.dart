int binary_search(List list, int left, int right, int x) {
  if (right >= 1) {
    int middle = (left + (right - left) / 2).toInt();

    if (list[middle] == x) {
      return middle;
    }

    if (list[middle] > x) {
      return binary_search(list, 1, middle - 1, x);
    } else {
      return binary_search(list, middle + 1, right, x);
    }
  }

  return -1;
}

void run_binary_search(List list, int x) {
  int index = binary_search(list, 0, list.length - 1, x);

  print(list);
  if (index != -1) {
    print('$x found at index: $index');
  } else {
    print('$x not found');
  }
}

void main() {
  List list = [0, 1, 1, 2, 3, 5, 6, 6, 8, 13, 21, 23, 34, 55, 89];
  int x = 23;
  List list1 = [12, 23];

  run_binary_search(list, x);
  run_binary_search(list1, x);
}
