import 'dart:io';
import 'dart:math';
import 'package:abstraction_inheritance/entitas/hero.dart';
import 'package:abstraction_inheritance/entitas/hero/grock.dart';
import 'package:abstraction_inheritance/entitas/hero/martis.dart';

void main() {
  String? inputMenu;

  print('Selamat Datang di LABKOM-LEJEN');
  print('Pilih karakter anda : ');
  print('Ketik 1 untuk memilih Grock \n Ketik 2 untuk memilih Martis');

  while (inputMenu?.toString() != '1'.toString() &&
      inputMenu?.toString() != '2'.toString()) {
    print('Masukan nomor : ');
    inputMenu = stdin.readLineSync();
    print('Anda pilih $inputMenu');
  }

  late Hero playerOne;
  late Hero playerTwo;

  if (inputMenu.toString() == '1') {
    playerOne = Martis(nama: "Martis", level: 1, health: 100);
    playerTwo = Grock(nama: "Grock", level: 1, health: 100);
  } else if (inputMenu.toString() == '2') {
    playerOne = Grock(nama: "Grock", level: 1, health: 100);
    playerTwo = Martis(nama: "Martis", level: 1, health: 100);
  }

  print('Permainan dimulai!');
  print(playerOne.namaHero);
  print('vs');
  print(playerTwo.namaHero);
  print('--------------------------');

  while (playerOne.healthHero! > 0) {
    int damageBot = Random().nextInt(15);
    int damagePlayer = Random().nextInt(15);

    playerOne.terserang(damageBot);
    print(
        'Player 1 kena hit $damageBot sisa HP Player = ${playerOne.healthHero}');
    playerTwo.terserang(damagePlayer);
    print(
        'Player 2 kena hit $damagePlayer sisa HP Bot =  ${playerTwo.healthHero}');

    if (playerOne.healthHero! <= 0) {
      print('Player 2 menang!');
      break;
    }
    if (playerTwo.healthHero! <= 0) {
      print('Player 1 menang!');
      break;
    }
  }
}
