import 'dart:io';

void main(List<String> arguments) {
  print("Pertemuan 2 - Dart Collections & Control Flow");

  // List
  var buahBuahan = <String>["pisang", 'pepaya', 'durian'];
  print('List buah: $buahBuahan');

  List<int> bilanganPrima = [2, 3, 5, 7, 11, 13, 17, 23];
  print('Bilangan prima: $bilanganPrima');

  // Operasi List
  buahBuahan.add('manggis');
  buahBuahan.addAll(['mangga', 'belimbing', 'apel']);
  buahBuahan.insert(0, 'semangka');
  buahBuahan.remove('durian');
  buahBuahan.removeAt(1);
  print('List buah setelah diubah: $buahBuahan');

  // Set
  Set<String> namaOrang = {'Bayu', 'Jak', 'Jupri', 'Mamang'};
  print('Set nama orang: $namaOrang');
  namaOrang.add('Bagas');
  namaOrang.remove('Bayu');
  print('Set setelah diubah: $namaOrang');

  // Map
  Map<String, String> nilai = {
    'Bayu': "90",
    'Agra': "89",
  };
  print('Map nilai: $nilai');
  
  nilai.forEach((key, value) {
    print('$key: $value');
  });
  
  nilai['Hanan'] = '80';
  nilai.remove('Bayu');
  print('Map nilai setelah diubah: $nilai');

  // Input dari user
  stdout.write('Masukkan nama Anda: ');
  String? nama = stdin.readLineSync();
  print('Nama Anda adalah: $nama');

  // Parsing String ke Number
  var nilaiString = "1000";
  int nilaiBulat = int.parse(nilaiString);
  double nilaiDouble = double.parse(nilaiString);
  print('Parsing String ke Int: $nilaiBulat');
  print('Parsing String ke Double: $nilaiDouble');
  
  double nilaiDouble2 = nilaiBulat.toDouble();
  print('Konversi Int ke Double: $nilaiDouble2');

  // If Statement
  var umur = 17;
  String selamat;
  if (umur > 0 && umur < 17) {
    selamat = 'Kamu masih Kecil';
  } else {
    selamat = 'Kamu sudah Besar';
  }
  print(selamat);

  // Ternary Operator
  var umurAsli = 10;
  var ucap = umurAsli > 0 && umurAsli < 17 ? 'Kamu Kecil' : 'Kamu Gede';
  print(ucap);

  // Fungsi
  print("Hasil penjumlahan: ${tambah(5, 7)}");
  sapa("Bayu");
}

// Fungsi Penjumlahan
double tambah(double a, double b) {
  return a + b;
}

// Fungsi Sapaan
void sapa(String nama) {
  print("Halo, $nama! Selamat datang di program Dart!");
}