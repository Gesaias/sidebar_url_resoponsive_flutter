import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[400],
      child: const Center(
          child: Text(
        'Profile Page ... :D',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
      )),
    );
  }
}
