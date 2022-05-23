// Finding Pattern البحث عن جزء من النص (33)
void main(List<String> arguments) {
  naiveSearch('hi how are you!', 'are');
}

void naiveSearch(String text, String pattern) {
  int LengthText = text.length;
  int LengthPattern = pattern.length;

  for (int i = 0; i < LengthText - LengthPattern /* */; i++) {
    int j;
    for (j = 0; j < LengthPattern; j++) {
      print(text[i + j] + '' + pattern[j]);
      if (text[i + j] != pattern[j]) {
        print('Break');
        break;
      }
    }
    if (j == LengthPattern) {
      print('pattern fount at index: $i');
    }
  }
}
