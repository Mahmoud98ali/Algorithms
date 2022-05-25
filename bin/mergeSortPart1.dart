void main() {
  // print(merge([1, 3, 13, 33, 35], [1, 2, 55, 64, 75]));
  print(mergeSort([1, 3, 13, 43, 60, 33, 35]));
}


// تم استخدام مفهوم ال Recursion
List mergeSort(List list) {
  print(list);
  if (list.length <= 1) return list;

  int middleIndex = (list.length / 2).floor();

  List leftList = mergeSort(list.sublist(0, middleIndex));
  List rightList = mergeSort(list.sublist(middleIndex));
  print(merge(leftList, rightList));
  return merge(leftList, rightList);
}

// هي الجزء الأول من خوارزمية merge وهو دمج 2List ولكن الشرط أنه مرتبين
List merge(List list1, List list2) {
  List mergeList = [];
  int i = 0;
  int j = 0;

  while (i < list1.length && j < list2.length) {
    if (list2[j] > list1[i]) {
      mergeList.add(list1[i]);
      i++;
    } else {
      mergeList.add(list2[j]);
      j++;
    }
  }

  while (i < list1.length) {
    mergeList.add(list1[i]);
    i++;
  }
  while (j < list2.length) {
    mergeList.add(list2[j]);
    j++;
  }
  return mergeList;
}
