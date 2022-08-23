class Vozilo {

  String nazivVozila = "auto";

  void vozi() {
    print("Naše vozilo sada vozi");
  }

  void voziNekiBrojKilometara(int brojKilometara) {
    print("Vozimo ${brojKilometara} kilometara");
  }

  void ugasiVozilo() {
    print("Vozilo ugašeno");
  }
}

void main() {
  Vozilo naseVozilo = new Vozilo();

  naseVozilo.nazivVozila = "avion";

  naseVozilo.vozi();
  print(naseVozilo.nazivVozila);
}
