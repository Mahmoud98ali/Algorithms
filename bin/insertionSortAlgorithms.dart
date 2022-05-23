void main (List<String> args)
{
 List<int> lst =[-9,45,44,88,4,5,79,45,6];
 print(insertionSortAlgo(lst));
}

List<int> insertionSortAlgo(List<int> list){
 // بدأنا برقم واحد لأن رح نبدأ نقارن بالقيم يلي قبله
  for(int i=1;i<list.length;i++)
  {
    print('Outer loop at index: $i');
  int currentChoosing =list[i];
  print('Current number is: $currentChoosing');
  int j;
  for(j= i-1;(j > -1)&&(currentChoosing<list[j] );j--)
  {print(list);
    print("Comparison between: ${list[j+1]} & ${list[j]}");
    list[j+1] = list[j];
  }
  list[j+1]=currentChoosing;

  print('***********************************');
  }
  return list;
}