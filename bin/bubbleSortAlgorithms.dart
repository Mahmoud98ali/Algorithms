// 38 bubble sort algorithms  قبل التحديث
void main(List<String> args) {
  List<int> lst = [10, 5, -5, 84, 11, 65, 2, 98, 100, 556, 12];
  print(bubbleSortAlg(lst));
}

List<int> bubbleSortAlg(List<int> list) {
  for (int i = 0; i < list.length; i++) {

    for (int j = 0; j < list.length - 1; j++) {

      if (list[j] > list[j + 1]) {
        int num = list[j];
        list[j] = list[j + 1];
        list[j + 1] = num;
      }
    }
  }
  return list;
}