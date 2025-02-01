import 'mahasiswa.dart';

void main(List<String> args) {
  var mahasiswa1 = Mahasiswa();
  var nama = mahasiswa1.name = 'Bayu';

  print(nama);

  // mahasiswa1._npm = 121;
  // mahasiswa1.setNpm(12);
  mahasiswa1.setNpm = 12;

  var hasilNpm = mahasiswa1.getNpm;

  print(hasilNpm);

}