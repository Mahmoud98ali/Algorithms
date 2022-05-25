void main() {
  print(quickSort([5, 2, 4, 3, 15, 34, 6, 1, 40, 23]));
}



List quickSort(List list,[left=0,right=-6])
{
  if(right==-6)
  {
    right = list.length -1;
  }
    if(left <right) {
      int pivotIndex = pivot(list, left, right);
print(pivotIndex);
      //left
      quickSort(list, left, pivotIndex - 1);
      //right
      quickSort(list, pivotIndex + 1, right);
    }

  return list;
}





int pivot(List list, [int start = 0, int end = -1]) {
  if (end == -1) {end = list.length - 1;}

  int pivot = list[start];
  int swapIndex = start;

  for (int i = start + 1; i < list.length; i++) {
    if (pivot > list[i]) {
      swapIndex++;
      swap(list, swapIndex, i);
    }
  }
  swap(list, start, swapIndex);
  return swapIndex;
}

void swap(List lst, i, j) {
  int temp = lst[i];
  lst[i] = lst[j];
  lst[j] = temp;
}
