import 'package:flutter/material.dart';

class Angkatan extends StatefulWidget {
  const Angkatan({super.key});

  @override
  State<Angkatan> createState() => _AngkatanState();
}

class _AngkatanState extends State<Angkatan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Data Angkatan")
      ),
    );
  }
}
