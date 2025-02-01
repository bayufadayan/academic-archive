abstract class Hero {
  // Deklarasi Atribut / field
  String? namaHero;
  int? levelHero;
  int? healthHero;

  // constructor
  Hero({required nama, required level, required health}) {
    namaHero = nama;
    levelHero = level;
    healthHero = health;
  }

  // Abstraksi method atau function
  void info() {
    print(namaHero);
  }

  void terserang(int dikurangberapa) {
    healthHero = (healthHero! - dikurangberapa);
    if (healthHero! < 0) {
      healthHero == 0;
    }
  }
}
