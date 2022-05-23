// 39 bubble sort algorithms
void main(List<String> args) {
  List<int> lst = [10, 5, -5, 84, 11, 65, 2, 98, 100, 556, 12];
  print(bubbleSortAlg(lst));
}

List<int> bubbleSortAlg(List<int> list) {
  int counter = 0;
  bool noSwap;
  for (int i = list.length; i > 0; i--) {
    noSwap = true;
    for (int j = 0; j < i - 1; j++) {
      counter++;
      if (list[j] > list[j + 1]) {
        int num = list[j];
        list[j] = list[j + 1];
        list[j + 1] = num;
        noSwap = false;
      }
    }
    if (noSwap) break;
  }

  print(counter);
  return list;
}

