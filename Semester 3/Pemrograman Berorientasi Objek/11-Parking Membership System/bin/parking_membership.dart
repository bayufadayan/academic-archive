import 'dart:io';

class Member {
  String name;
  String membershipType;

  Member(this.name, this.membershipType);

  void register() {
    print('$name telah mendaftar sebagai anggota $membershipType');
  }
}

class RegularMember extends Member {
  RegularMember(String name) : super(name, 'Reguler');
}

class PremiumMember extends Member {
  PremiumMember(String name) : super(name, 'Premium');
}

Set<Member> members = {};

void addMember(String name, String membershipType) {
  Member newMember;
  if (membershipType.toLowerCase() == 'reguler') {
    newMember = RegularMember(name);
  } else if (membershipType.toLowerCase() == 'premium') {
    newMember = PremiumMember(name);
  } else {
    print('Tipe keanggotaan tidak valid');
    return;
  }
  members.add(newMember);
  newMember.register();
}

void viewMembers() {
  if (members.isEmpty) {
    print('Tidak ada anggota yang terdaftar.');
    return;
  }
  for (var member in members) {
    print('Nama: ${member.name}, Tipe Keanggotaan: ${member.membershipType}');
  }
}

void editMember(String name) {
  try {
    var member = members.firstWhere((m) => m.name == name);
    stdout.write('Masukkan tipe keanggotaan baru (Reguler/Premium): ');
    var newMembershipType = stdin.readLineSync();
    if (newMembershipType!.toLowerCase() == 'reguler' ||
        newMembershipType.toLowerCase() == 'premium') {
      member.membershipType = newMembershipType;
      print(
          'Anggota $name telah diubah menjadi tipe keanggotaan $newMembershipType.');
    } else {
      print('Tipe keanggotaan tidak valid.');
    }
  } catch (e) {
    print('Anggota dengan nama $name tidak ditemukan.');
  }
}

void deleteMember(String name) {
  var member = members.where((m) => m.name == name).toList();
  if (member.isNotEmpty) {
    members.remove(member.first);
    print('Anggota $name telah dihapus.');
  } else {
    print('Anggota dengan nama $name tidak ditemukan.');
  }
}

void clearScreen() {
  print('\x1B[2J\x1B[0;0H');
}

void logo() {
  final logo = File('lib/logo.txt');

  try {
    final contents = logo.readAsStringSync();
    print(contents);
  } catch (error) {
    print('Terjadi kesalahan: $error');
  }
}

void main() {
  clearScreen();
  print('--------------------UNPAK PARKING MEMBERSHIP-------------------');
  logo();
  print(
      '\tSebulan Cuman \x1B[1m\x1B[31m10.000\x1B[0m Rupiah. \x1B[33mDaftar Sekarang!!\x1B[0m');
  print('\t\tKlik Enter untuk lanjut');
  stdin.readLineSync();
  clearScreen();

  while (true) {
    print('--------------------UNPAK PARKING MEMBERSHIP-------------------');
    logo();
    print(
        'Pilih menu: \n1. Daftar Member\n2. Lihat Daftar Member\n3. Edit Member\n4. Hapus Member\n5. Keluar');
    stdout.write('Pilih : ');
    var choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        clearScreen();
        print('Anda memilih menu 1 (Daftar Member)');
        stdout.write('Masukkan nama: ');
        var name = stdin.readLineSync();
        stdout.write('Pilih tipe keanggotaan (Reguler/Premium): ');
        var membershipType = stdin.readLineSync();
        if (name != null && membershipType != null) {
          addMember(name, membershipType);
        } else {
          print('Input tidak valid.');
        }
        break;

      case '2':
        clearScreen();
        print('Anda memilih menu 2 (Lihat Daftar Member)');
        viewMembers();
        break;

      case '3':
        clearScreen();
        print('Anda memilih menu 3 (Edit Member)');
        stdout.write('Masukkan nama anggota yang ingin diedit: ');
        var name = stdin.readLineSync();
        if (name != null) {
          editMember(name);
        } else {
          print('Input tidak valid.');
        }
        break;

      case '4':
        clearScreen();
        print('Anda memilih menu 4 (Hapus Member)');
        stdout.write('Masukkan nama anggota yang ingin dihapus: ');
        var name = stdin.readLineSync();
        if (name != null) {
          deleteMember(name);
        } else {
          print('Input tidak valid.');
        }
        break;

      case '5':
        print('Anda telah keluar dari program.');
        return;

      default:
        clearScreen();
        print('\x1B[31mPilihan tidak valid. Silakan coba lagi.\x1B[0m');
    }

    print('\nKlik Enter untuk kembali ke menu utama.');
    stdin.readLineSync();
    clearScreen();
  }
}
