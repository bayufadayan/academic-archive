// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'input-data.dart';
import 'edit-data.dart';

class Bakpau {
  int id;
  String rasa;

  Bakpau({
    required this.id,
    required this.rasa,
  });

  static List<Bakpau> daftarBakpau = [
    Bakpau(id: 1, rasa: 'Coklat'),
    Bakpau(id: 2, rasa: 'Ayam'),
    Bakpau(id: 3, rasa: 'Kacang'),
  ];
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  void bakpauDelete(int id) {
    setState(() {
      Bakpau.daftarBakpau.removeWhere((Bakpau bakpau) => bakpau.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text('BakpauQu'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 0,
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
          ),
          itemCount: Bakpau.daftarBakpau.length,
          itemBuilder: (context, index) {
            return InkWell(
              onDoubleTap: () => bakpauDelete(Bakpau.daftarBakpau[index].id),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      EditBakpau(id: Bakpau.daftarBakpau[index].id),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      Bakpau.daftarBakpau[index].rasa,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: Builder(
        builder: (context) => FloatingActionButton(
          backgroundColor: Colors.deepPurpleAccent,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const InputData(),
              ),
            );
          },
        ),
      ),
    );
  }
}
