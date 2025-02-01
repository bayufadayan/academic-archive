import 'dart:io';

class Mahasiswa {
  String? name;

  Mahasiswa(this.name);
}

Set<Mahasiswa> mhs = {};

void add(String name) {
  Mahasiswa newMahasiswa = Mahasiswa(name);
  mhs.add(newMahasiswa);
  print('Mahasiswa dengan nama $name telah ditambahkan.');
}

void tampil() {
  if (mhs.isEmpty) {
    print('Tidak ada mahasiswa yang terdaftar.');
    return;
  }
  print('Daftar Mahasiswa:');
  for (var mahasiswa in mhs) {
    print('Nama: ${mahasiswa.name}');
  }
}

void update(String name, String newName) {
  var found = false;
  for (var mahasiswa in mhs) {
    if (mahasiswa.name == name) {
      mahasiswa.name = newName;
      found = true;
      print('Mahasiswa dengan nama $name telah diubah menjadi $newName.');
      break;
    }
  }
  if (!found) {
    print('Mahasiswa dengan nama $name tidak ditemukan.');
  }
}

void delete(String name) {
  // Cek apakah ada mahasiswa dengan nama yang sesuai
  var mahasiswaToRemove = mhs.where((mahasiswa) => mahasiswa.name == name).toList();
  
  if (mahasiswaToRemove.isNotEmpty) {
    mhs.remove(mahasiswaToRemove.first); // Hapus mahasiswa pertama yang ditemukan
    print('Mahasiswa dengan nama $name telah dihapus.');
  } else {
    print('Mahasiswa dengan nama $name tidak ditemukan.');
  }
}

void clearScreen() {
  print('\x1B[2J\x1B[0;0H'); // Membersihkan layar konsol
}

void main() {
  while (true) {
    clearScreen();
    print('------------------ MENU MANAJEMEN MAHASISWA ------------------');
    print('1. Tambah Mahasiswa');
    print('2. Tampilkan Daftar Mahasiswa');
    print('3. Update Nama Mahasiswa');
    print('4. Hapus Mahasiswa');
    print('5. Keluar');
    stdout.write('Pilih menu (1-5): ');
    var choice = stdin.readLineSync();

    switch (choice) {
      case '1': // Tambah Mahasiswa
        clearScreen();
        print('------------------ TAMBAH MAHASISWA ------------------');
        stdout.write('Masukkan nama mahasiswa: ');
        var name = stdin.readLineSync() ?? '';
        if (name.trim().isNotEmpty) {
          add(name);
        } else {
          print('Nama tidak boleh kosong.');
        }
        break;

      case '2': // Tampilkan Daftar Mahasiswa
        clearScreen();
        print('------------------ DAFTAR MAHASISWA ------------------');
        tampil();
        break;

      case '3': // Update Nama Mahasiswa
        clearScreen();
        print('------------------ UPDATE NAMA MAHASISWA ------------------');
        stdout.write('Masukkan nama mahasiswa yang ingin diupdate: ');
        var name = stdin.readLineSync() ?? '';
        stdout.write('Masukkan nama baru: ');
        var newName = stdin.readLineSync() ?? '';
        if (name.trim().isNotEmpty && newName.trim().isNotEmpty) {
          update(name, newName);
        } else {
          print('Nama tidak boleh kosong.');
        }
        break;

      case '4': // Hapus Mahasiswa
        clearScreen();
        print('------------------ HAPUS MAHASISWA ------------------');
        stdout.write('Masukkan nama mahasiswa yang ingin dihapus: ');
        var name = stdin.readLineSync() ?? '';
        if (name.trim().isNotEmpty) {
          delete(name);
        } else {
          print('Nama tidak boleh kosong.');
        }
        break;

      case '5': // Keluar
        print('Terima kasih! Program selesai.');
        return;

      default:
        print('Pilihan tidak valid. Silakan pilih menu 1-5.');
    }

    // Tunggu pengguna menekan Enter sebelum kembali ke menu utama
    stdout.write('\nKlik Enter untuk kembali ke menu utama...');
    stdin.readLineSync();
  }
}