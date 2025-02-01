import 'dart:io';

class Mahasiswa {
  String? name;

  Mahasiswa(this.name);
}

Set<Mahasiswa> mhs = {};

void add(String name) {
  Mahasiswa newMahasiswa = Mahasiswa(name);
  mhs.add(newMahasiswa);
}

void tampil() {
  for (var mahasiswa in mhs) {
    print('Nama: ${mahasiswa.name}');
  }
}

void update(String name, String newName) {
  for (var mahasiswa in mhs) {
    if (mahasiswa.name == name) {
      mahasiswa.name = newName;
    }
  }
}

void delete(String name) {
  mhs.removeWhere((mahasiswa) => mahasiswa.name == name);
}

void main() {
  stdout.write("masukin nama: ");
  var name = stdin.readLineSync() ?? '';
  add(name);

  tampil();

  stdout.write("cari nama: ");
  name = stdin.readLineSync() ?? '';
  stdout.write("masukin nama baru: ");
  var newName = stdin.readLineSync() ?? '';
  update(name, newName);

  stdout.write("cari nama: ");
  name = stdin.readLineSync() ?? '';
  delete(name);
}
