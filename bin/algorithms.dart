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


// 38 bubble sort algorithms  قبل التحديث

//void main(List<String> args) {
//   List<int> lst = [10, 5, -5, 84, 11, 65, 2, 98, 100, 556, 12];
//   print(bubbleSortAlg(lst));
// }

// List<int> bubbleSortAlg(List<int> list) {
//   for (int i = 0; i < list.length; i++) {

//     for (int j = 0; j < list.length - 1; j++) {
    
//       if (list[j] > list[j + 1]) {
//         int num = list[j];
//         list[j] = list[j + 1];
//         list[j + 1] = num;
//       }
//     }
//   }
//   return list;
// }



// '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
// Finding Pattern البحث عن جزء من النص (33)
// void main(List<String> arguments) {
//   naiveSearch('hi how are you!', 'are');
// }

// void naiveSearch(String text, String pattern) {
//   int LengthText = text.length;
//   int LengthPattern = pattern.length;

//   for (int i = 0; i < LengthText - LengthPattern /* */; i++) {
//     int j;
//     for (j = 0; j < LengthPattern; j++) {
//       print(text[i + j] + '' + pattern[j]);
//       if (text[i + j] != pattern[j]) {
//         print('Break');
//         break;
//       }
//     }
//     if (j == LengthPattern) {
//       print('pattern fount at index: $i');
//     }
//   }
// }
