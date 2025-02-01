import 'dart:io';

void main(List<String> args) {
  print('Hello World');
  print("=============");
  print('Pemrograman Berorientasi Objek');

  // Gaya penulisan Kode 
  // snake_case, PascalCase, camelCase, kebab-case

  // Tipe data angka
  int angka1 = 10;
  double angka2 = 12.5;
  num angka3 = 13;
  num angka4 = 14.78;

  print(angka1);
  print(angka2);
  print(angka3);
  print(angka4);

  // String
  String firstName = "Fakhriza";
  String lastName = "Wafiq";
  String nama = "bau";

  print("Saya juga $nama");
  print(firstName + " " + lastName);
  print("$firstName $lastName");

  // Boolean
  bool lulus = false;
  print(lulus);
  lulus = true;
  print(lulus);

  // Var vs Dynamic
  var namaVar = "Fakriza";
  print(namaVar);
  
dynamic kalimat = "Aku suka kamu";
  print(kalimat);
  kalimat = 10;

  // Const vs Final
  const phi = 3.14;
  final tinggiBadan = [1, 2, 3, 4];

  print(phi);
  print(tinggiBadan);
  tinggiBadan[2] = 10;
  print(tinggiBadan);

  // Late
  late String alamat;
  alamat = "Jalan Kenangan";
  print(alamat);

  late var value2 = getValue();
  print('variable sudah dibuat');
  print(value2);

  // Operasi Aritmatika
  int a = 10;
  double b = 20;
  print(a ~/= 10);
  print("Saya juga ${a + b}");

  // Logika
  var nilaiTugas = 85;
  var nilaiAbsen = 75;
  var cekNilaiAkhir = (nilaiTugas >= 80) && (nilaiAbsen >= 75);
  print(cekNilaiAkhir);

  // Percabangan
  var usia = 10;
  if (usia == 10) {
    print("Anda berada dalam beralihan");
  } else if (usia < 10) {
    print("bocil diem aja");
  } else {
    print("udah gede ni yee");
  }

  // Perulangan
  for (var i = 0; i < 10; i++) {
    print("Perulangan ke-$i");
  }

  int x = 10;
  while (x >= 0) {
    print(x);
    x -= 1;
  }

  // List
  List<String> namaBuah = ["pisang", "pepaya", "apel"];
  for (var buah in namaBuah) {
    print(buah);
  }

  List<String> buahBuahan = ['pisang', 'rambutan', 'melon'];
  print(buahBuahan);
  buahBuahan.add('semangka');

  for (var buah in buahBuahan) {
    print(buah);
  }

  var hewanHewanan = <String>['kucing', 'ayam'];
  print(hewanHewanan);

  print("Enter your name?");
  String? name = stdin.readLineSync();
  print(name);
}

String getValue() {
  print("Manggil function getValue");
  return "ini isi valuenya";
}