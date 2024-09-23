import 'package:flutter/material.dart';

class HOME extends StatelessWidget {
  const HOME({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Flutter Yomolopo',
            style: TextStyle(color: Color.fromARGB(255, 95, 82, 82))),
        backgroundColor: const Color.fromARGB(255, 68, 197, 68),
      ),
    );
  }
}
