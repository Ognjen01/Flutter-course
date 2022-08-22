import 'dart:io';

void main()
{
    print("Molimo unesite broj:");
    int? broj = int.parse(stdin.readLineSync()!);
 
    if(broj % 2 == 0){
      print("Broj je paran.");
    } else {
      print("Broj nije paran.");
    }
}