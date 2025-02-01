class Manusia{
  String nama = "NoName";
  int umur = 17;
  String jenisKelamin = "undefined";
  String? golonganDarah;

  void detailManusia(){
    print('Nama     : $nama');
    print('Umur     : $umur');
    print('Gender   : $jenisKelamin');
    print('GolDar   : $golonganDarah');
  }

  String salamSapa(String namaTeman) => "Halooo teman saya, $namaTeman";

  // constructor
  Manusia(this.nama, this.umur, this.jenisKelamin, [this.golonganDarah]);

}

class Karyawan extends Manusia{
  int salary = 0;

  String work(){
    return 'Saya Sedang Bekerja';
  }

  String salamSapa(String namaBoss) => "Halooo boss $namaBoss, ${work()}";

  Karyawan(super.nama, super.umur, super.jenisKelamin, this.salary);
}

void main(List<String> args) {
  var manusiaPertama = Manusia("Bayu", 20, "Bujang", "AB");

  manusiaPertama.detailManusia();
  // manusiaPertama.salamSapa('Hawa');
  print('');
  print(manusiaPertama.salamSapa('Hawa'));


  var karyaman1 = Karyawan("Raplh", 90, 'Laki Laki', 1000000);

  print(karyaman1.salamSapa('Bayu'));
  
}