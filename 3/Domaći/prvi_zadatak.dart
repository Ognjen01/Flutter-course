import 'dart:js_util';

abstract class Osoba {

  String ime = "";
  String prezime = "";
  String mjestoStanovanja = "";
  late int brojGodina;

  void predstaviSe() {
    print("Zdravo, moje ime je " + this.ime);
  }

  void kolikoImasGodina() {
    print("Imam ${this.brojGodina} godina");
  }

  Osoba();
  Osoba.saImenom(this.ime);
}

class Korisnik extends Osoba {

  String email = "";
  String lozinka = "";

  Korisnik() : super();
  Korisnik.saSvime(this.email, this.lozinka);
  Korisnik.bezLozinke(this.email);

  void rezervisiSobu(int brojSobe) {
    print("Dobar dan, želim da rezervišem sobu: ${brojSobe}");
  }
}

class Administrator extends Osoba {

  String sifraAdministratora = "";
}

class Recepcioner extends Osoba {

  String hotel = "Kardial";
  var zauzeteSobe = [1, 4, 5]; 

  void rezervisiSobu(int brojSobe) {
    if(!zauzeteSobe.contains(brojSobe)){
        print("Rezervisali ste sobu: ${brojSobe}");
      } else {
        print("Soba ${brojSobe} je već rezervisana molimo pokušajte drugu sobu.");
      }
  }

  void ispisiSlobodneSobe(){
    for(int x = 1; x <= 10; x++){
      if(!zauzeteSobe.contains(x)){
        print("Soba ${x} je slobodna");
      }
    }
  }
}

void main() {

  Korisnik korisnik = new Korisnik();
  Administrator administrator = new Administrator();
  Recepcioner recepcioner = new Recepcioner();

  recepcioner.rezervisiSobu(3);
}
