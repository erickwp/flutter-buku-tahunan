import 'package:buku_tahunan/angkatan.dart';
import 'package:buku_tahunan/dosen.dart';
import 'package:buku_tahunan/kaprodi.dart';
import 'package:buku_tahunan/login.dart';
import 'package:buku_tahunan/mahasiswa.dart';
import 'package:buku_tahunan/prodi.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Icon signOutIcon = const Icon(LineIcons.alternateSignOut);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buku Tahunan"),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: signOutIcon,
            tooltip: 'Log Out',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));

              Get.to(const Login());
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: const FlutterLogo(size: 56.0),
              title: const Text('Prodi'),
              subtitle: const Text('Data prodi'),
              trailing: const Icon(LineIcons.angleRight),
              onTap: () {
                Get.to(const Prodi());
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const FlutterLogo(size: 56.0),
              title: const Text('Dosen'),
              subtitle: const Text('Data dosen'),
              trailing: const Icon(LineIcons.angleRight),
              onTap: () {
                Get.to(const Dosen());
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const FlutterLogo(size: 56.0),
              title: const Text('Angkatan'),
              subtitle: const Text('Data angkatan'),
              trailing: const Icon(LineIcons.angleRight),
              onTap: () {
                Get.to(const Angkatan());
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const FlutterLogo(size: 56.0),
              title: const Text('Kaprodi'),
              subtitle: const Text('Data kaprodi'),
              trailing: const Icon(LineIcons.angleRight),
              onTap: () {
                Get.to(const Kaprodi());
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const FlutterLogo(size: 56.0),
              title: const Text('Mahasiswa'),
              subtitle: const Text('Data mahasiswa'),
              trailing: const Icon(LineIcons.angleRight),
              onTap: () {
                Get.to(const Mahasiswa());
              },
            ),
          ),
        ],
      )
    );
  }
}
