import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: const Center(
          child: Text(
        'Help Page ... :D',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
      )),
    );
  }
}
