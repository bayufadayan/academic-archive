import 'package:flutter/material.dart';
import 'homepage.dart';

class EditBakpau extends StatefulWidget {
  const EditBakpau({
    Key? key,
    required this.id,
  }) : super(key: key);

  final int id;

  @override
  State<EditBakpau> createState() => _EditBakpauState();
}

class _EditBakpauState extends State<EditBakpau> {
  final textController = TextEditingController();

  void bakpauUpdate(int id) {
    final String inputText = textController.text;

    if (inputText.isNotEmpty && inputText != ' ') {
      final Bakpau bakpau =
          Bakpau.daftarBakpau.where((Bakpau bakpau) => bakpau.id == id).first;

      setState(() {
        bakpau.rasa = inputText;
        textController.clear();
      });
    }

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Data Bakpau'),
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
                  hintText: Bakpau.daftarBakpau
                      .where((Bakpau bakpau) => bakpau.id == widget.id)
                      .first
                      .rasa,
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
              bakpauUpdate(widget.id);
            },
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Colors.deepPurpleAccent,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'Update',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
