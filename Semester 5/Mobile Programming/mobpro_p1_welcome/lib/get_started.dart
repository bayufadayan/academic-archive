import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Color.fromRGBO(0, 65, 195, 1.0),
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Text(
                  'WELCOME',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'Poppins-Semibold',
                  ),
                ),
                ])
            ),
          ),
        ],
      ),
    );
  }
}
