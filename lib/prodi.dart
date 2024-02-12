import 'package:flutter/material.dart';

class Prodi extends StatefulWidget {
  const Prodi({super.key});

  @override
  State<Prodi> createState() => _ProdiState();
}

class _ProdiState extends State<Prodi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Data Prodi")
      ),
    );
  }
}
