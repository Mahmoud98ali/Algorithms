void main(List<String> args) {
  List<int> lst = [0, 5, -5, 84, 11, 65, 2, 98, 100, 556, 12];
  print(selectionSortAlg(lst));
}

List<int> selectionSortAlg(List<int> list) {
  int counter = 0;
  for (int i = 0; i < list.length; i++) {
    int min = i;
    print('==============outside==============');
    print(list);
    for (int j = i + 0; j < list.length; j++) {
      counter++;
      if (list[j] < list[min]) {
        min = j;
      }
      print('==============inside==============');
      print(list);
      print(list[min]);
    }

    if (min != i) {
      int tmp = list[i];
      list[i] = list[min];
      list[min] = tmp;
      print('Swap done');
    }
    print('****************************');
  }

  print(counter);
  return list;
}
