void main() {
  
//  1. Deklaracija varijabli:

  var brojGodina = 15;
  var pi = 3.14;
  int brojAdrese = 30;
  const brzinaSvjetlosti = 299792456;
  final mjesec = "Avgust";
//   mjesec = "Septembar";
  var noviBroj = brojGodina + brojAdrese;

//   2. Kolekcije podataka:

//   2.1 Liste
  var lista = [1, 2, 3, 4];
  print(lista);

//   2.2 Mape
  var mapa = {'Usrname': 'Ognjen', 'Password': 'mjaujau123'};
  mapa['Uid'] = '123123123';
  print(mapa);

//   2.3 Setovi
  var setovi = <String>{'Dobar', 'Dan', 'Svima'};
  print(setovi);

//   3. Operatori:

//   3.1 Aritmetički
  print(3 + 2);
  print(3 - 2);
  print(10 / 2);
  print(10 * 2);
  print(3.3 + 2.2);
  print("Zdravo " + "Svima");

//   3.2 Logički
  print(false);
  print(3 == 2);
  print(3 != 2);
  print(3 > 2);
  print(3 >= 2);

//   4. Uslovi

  var broj = 12;
  if (broj % 2 == 0) {
    print("Paran");
  } else {
    print("Neparan");
  }

  var brojj = 12;
  if (brojj % 2 == 0) {
    print("Paran");
  } else if (brojj == 0) {
    print("Broj je 0");
  } else {
    print("Neparan");
  }

  var grade = "A";
  switch (grade) {
    case "A":
      {
        print("Excellent");
      }
      break;

    case "B":
      {
        print("Good");
      }
      break;

    case "C":
      {
        print("Fair");
      }
      break;

    case "D":
      {
        print("Poor");
      }
      break;

    default:
      {
        print("Invalid choice");
      }
      break;
  }

//   5. Petlje

//   5.1 For
  
  var num = 5;
  var factorial = 1;

  for (var i = num; i >= 1; i--) {
    factorial *= i;
  }
  print(factorial);
  
//   5.2 For each
  
  var usrMap = {"name": "Tom", 'Email': 'tom@xyz.com'}; 
   usrMap.forEach((k,v) => print('${k}: ${v}'));
  
//   5.3 While
  
  var numm = 5; 
   var factoriall = 1; 
   
   while(numm >=1) { 
      factoriall = factoriall * numm; 
      numm--; 
   } 
   print("The factorial  is ${factoriall}");
  
  
//   Ovdje se završava main funkcija
}

factorial(number) { 
   if (number <= 0) {         
      // termination case 
      return 1; 
   } else { 
      return (number * factorial(number - 1));    
      // function invokes itself 
   } 
}

int add(int a, int b) {
  return a + b;
}
