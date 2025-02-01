class Hewan{
  void bergerak(){
    print("Hewan Bergerak");
  }

  void suara(){
    print("hewan Bersuara");
  }
}

class Elang extends Hewan{

  @override
  void bergerak(){
    print('Terbang');
  }

  @override
  void suara(){
    print("Akkkhh");
  }
}

class Hiu extends Hewan{

  @override
  void bergerak(){
    print('Berenang');
  }

}

class Kucing extends Hewan{

  @override
  void bergerak(){
    print('Berjalan');
  }

}

void main(List<String> args) {
  var hewan1 = Elang();

  hewan1.bergerak();
}

