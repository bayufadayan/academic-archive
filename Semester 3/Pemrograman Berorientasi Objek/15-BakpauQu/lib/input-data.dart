import 'package:flutter/material.dart';
import 'homepage.dart';

class InputData extends StatefulWidget {
  const InputData({super.key});

  @override
  State<InputData> createState() => _InputDataState();
}

class _InputDataState extends State<InputData> {
  final textController = TextEditingController();

  void saveBakpau() {
    final String inputText = textController.text;

    if (inputText.isNotEmpty) {
      final Bakpau saved = Bakpau(
        id: Bakpau.daftarBakpau.length + 1,
        rasa: inputText,
      );

      setState(() {
        Bakpau.daftarBakpau.add(saved);
        textController.clear();
      });
    }

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
      (route) => false, // Hapus semua halaman di atas HomePage
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Data Bakpau'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              controller: textController,
              decoration: InputDecoration(
                  label: const Text('Data'),
                  labelStyle: const TextStyle(color: Colors.black45),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 240, 240, 240)),
            ),
          ),
          const SizedBox(),
          ElevatedButton(
            onPressed: () {
              saveBakpau();
            },
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Colors.deepPurpleAccent,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'Tambah Data',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
