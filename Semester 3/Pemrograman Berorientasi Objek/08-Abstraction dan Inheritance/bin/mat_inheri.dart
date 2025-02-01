abstract class Hewan {
  String nama;
  int umur;

  Hewan(this.nama, this.umur);

  void bersuara(); // Method abstrak
}

class Kucing extends Hewan {
  String warnaBulu;

  Kucing(String nama, int umur, this.warnaBulu) : super(nama, umur);

  @override
  void bersuara() {
    print("\$nama: Meong!");
  }
}

class Anjing extends Hewan {
  String ras;

  Anjing(String nama, int umur, this.ras) : super(nama, umur);

  @override
  void bersuara() {
    print("\$nama: Guk-guk!");
  }
}

void main() {
  var kucing = Kucing("Kitty", 2, "Putih");
  print("Nama: \${kucing.nama}, Umur: \${kucing.umur}, Warna Bulu: \${kucing.warnaBulu}");
  kucing.bersuara();

  var anjing = Anjing("Buddy", 3, "Golden Retriever");
  print("Nama: \${anjing.nama}, Umur: \${anjing.umur}, Ras: \${anjing.ras}");
  anjing.bersuara();
}
