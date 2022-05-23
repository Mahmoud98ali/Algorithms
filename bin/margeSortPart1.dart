
// هي الجزء الأول من خوارزمية marge وهو دمج 2List ولكن الشرط أنه مرتبين
void main() {
  print(marge([1,3,13,33,35], [1,2,55,64,75]));
}

List marge(List list1, List list2) {
  List margeList = [];
  int i = 0;
  int j = 0;

  while (i < list1.length && j < list2.length) {
    if (list2[j] > list1[i]) {
      margeList.add(list1[i]);
      i++;
    } else {
      margeList.add(list2[j]);
      j++;
    }
  }

  while(i<list1.length)
  {
    margeList.add(list1[i]);
    i++;
  }
  while(j<list2.length)
  {
    margeList.add(list2[j]);
    j++;
  }
  return margeList;
}
