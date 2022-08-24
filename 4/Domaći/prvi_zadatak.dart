void main(){
  List<Vozilo> vozila = [Vozilo("auto", 4), 
  Vozilo("bicikl", 2), 
  Vozilo("motor", 2), 
  Vozilo("auto", 4), 
  Vozilo("monocikl", 1), 
  Vozilo("kamion", 6)];

  List<Vozilo> nadjenaVozila = nadjiVozilaSaDvaTocka(vozila);
  nadjenaVozila.reversed.forEach((element) {
    print(element.tip);
  });
}

List<Vozilo> nadjiVozilaSaDvaTocka(List<Vozilo> svaVozila){
  List<Vozilo> vozilaSaDvaTocka = [];
  for(Vozilo vozilo in svaVozila){
    if(vozilo.brojTockova == 2){
      vozilaSaDvaTocka.add(vozilo);
    }
  }
  return vozilaSaDvaTocka;
}

class Vozilo{
  String tip = "";
  int brojTockova = 0;
  Vozilo(this.tip, this.brojTockova);
}