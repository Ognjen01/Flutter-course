void main(){
  print(removeDups("Ovo je string na kome izbacujemo duplikate iz njega..."));
}

String removeDups(String s) {
  var arr = new List.filled(256, 0);
  String l = '';
  int i = 0;
  for (i = 0; i < s.length; i++) {
    if (arr[s.codeUnitAt(i)] == 0) {
      l += s[i];
      arr[s.codeUnitAt(i)]++;
    }
  }
  return l;
}