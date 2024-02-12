import 'package:buku_tahunan/mahasiswa_create.dart';
import 'package:buku_tahunan/mahasiswa_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MahasiswaData {
  final String name;
  final String nim;

  MahasiswaData(this.name, this.nim);
}

class Mahasiswa extends StatefulWidget {
  const Mahasiswa({super.key});

  @override
  State<Mahasiswa> createState() => _MahasiswaState();
}

class _MahasiswaState extends State<Mahasiswa> {
  List<MahasiswaData> mahasiswaData = [
    MahasiswaData("Fitri Aulia Dewi", "100000000001"),
    MahasiswaData("Stella Gracia", "100000000002"),
    MahasiswaData("Nida Nadiyyan", "100000000003"),
    MahasiswaData("Andri Yana Suherman", "100000000004"),
    MahasiswaData("Putra Ade Yansyah", "100000000005"),
    MahasiswaData("Muhammad Nur Anggiya", "100000000006"),
    MahasiswaData("Muhammad Deni Zaelani", "100000000007"),
    MahasiswaData("Erick Wahyudi Prakoso", "100000000008"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Mahasiswa")
      ),
      body: ListView.builder(
          itemCount: mahasiswaData.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(mahasiswaData[index].name),
            subtitle: Text("NIM: ${mahasiswaData[index].nim}"),
            onTap: () {
              Get.to(MahasiswaDetail(mahasiswaData[index]));
            },
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const MahasiswaCreate());
        },
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
