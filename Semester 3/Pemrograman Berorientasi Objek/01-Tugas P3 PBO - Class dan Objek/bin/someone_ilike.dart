import 'package:someone_ilike/someone_ilike.dart' as someone_ilike;

class Gebetan {
  String nama_asli = '';
  String panggilan = '';
  String waktu_kenal = '';
  String umur = '';

  //constract
  Gebetan(String x, String y, String z, String a) {
    nama_asli = x;
    panggilan = y;
    waktu_kenal = z;
    umur = a;
  }
}

void main() {
  //Meng-inputkan isi nya
  var pertama = Gebetan('Magita', 'Tan', '2017', '19 Tahun');
  var kedua = Gebetan('Hiromi Hayakari', 'Hiromi', '2018', '20 Tahun');
  var ketiga = Gebetan('Saki', 'Sak', '2017', '19 Tahun');
  var keempat = Gebetan('Min Seol Ah', 'Seula', '2021', '19 Tahun');
  //dh empat aja dulu :v

  //saatnya mencetak
  print('!HANYA UNTUK HIBURAN!');
  print('==============================');
  print('IDENTITAS');
  print('Nama\t\t: ' + pertama.nama_asli);
  print('Panggilan\t: ' + pertama.panggilan);
  print('Tahun\t\t: ' + pertama.waktu_kenal);
  print('Umur\t\t: ' + pertama.umur);

  print('==============================');
  print('IDENTITAS');
  print('Nama\t\t: ' + kedua.nama_asli);
  print('Panggilan\t: ' + kedua.panggilan);
  print('Tahun\t\t: ' + kedua.waktu_kenal);
  print('Umur\t\t: ' + kedua.umur);

  print('==============================');
  print('IDENTITAS');
  print('Nama\t\t: ' + ketiga.nama_asli);
  print('Panggilan\t: ' + ketiga.panggilan);
  print('Tahun\t\t: ' + ketiga.waktu_kenal);
  print('Umur\t\t: ' + ketiga.umur);

  print('==============================');
  print('IDENTITAS');
  print('Nama\t\t: ' + keempat.nama_asli);
  print('Panggilan\t: ' + keempat.panggilan);
  print('Tahun\t\t: ' + keempat.waktu_kenal);
  print('Umur\t\t: ' + keempat.umur);

  print('==============================');

  /*  065121100
      Muhamad Bayu Fadayan  */
}
