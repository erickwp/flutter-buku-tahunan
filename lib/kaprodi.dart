import 'package:flutter/material.dart';

class Kaprodi extends StatefulWidget {
  const Kaprodi({super.key});

  @override
  State<Kaprodi> createState() => _KaprodiState();
}

class _KaprodiState extends State<Kaprodi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Data Kaprodi")
      ),
    );
  }
}
