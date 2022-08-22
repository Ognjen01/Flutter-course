import 'dart:io';

void main()
{
    print("Molimo unesite riječ:");
    String rijec = stdin.readLineSync()!;
 
    int brojac = 0;

    rijec.runes.forEach((int prolaz){
      brojac++;
    });

    print(brojac);

    // Takođe postoji ugrađena funkcija za dužinu riječi:
    print(rijec.length);
}