void main() {

  List listaBrojeva = [1, 5, 2, -4, 999, -53, 0, 34, 70, -10];

  for (var i = 0; i < listaBrojeva.length; i++) {
    if(listaBrojeva[i] > 0 && listaBrojeva[i] % 2 == 0 ){
      print(listaBrojeva[i]);
    }
  }
}