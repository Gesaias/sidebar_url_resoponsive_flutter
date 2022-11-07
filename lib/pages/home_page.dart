import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.cyan,
        child: const Center(
            child: Text(
          'Home Page ... :D',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        )),
      ),
    );
  }
}
