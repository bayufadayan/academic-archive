class Mahasiswa{
  int? _npm;
  String? name;

  void _identitasPribadi (int phoneNumber){
    print(phoneNumber);
  }

  void rahasiaUmum(){
    print('bukan apa apa');
  }

  // Setter
  set setNpm (int npm) => _npm = npm;

  // Getter
  int get getNpm => _npm!;

}