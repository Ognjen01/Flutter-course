void main(){
  List<int> list = [1, 4, 7, 11, 99, 0, 2, 4, -1];
  print(list);
  bubbleSort(list);
  print(list);
}

void bubbleSort(List list) {
  if (list == null || list.length == 0) return;

  int n = list.length;
  int i, step;
  for (step = 0; step < n; step++) {
    for ( i = 0; i < n - step - 1; i++) {
      if (list[i] > list[i + 1]) {
        int temp = list[i];
        list[i] = list[i+1];
        list[i+1] = temp;
      }
    }
  }
}
