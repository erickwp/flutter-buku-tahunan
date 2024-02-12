import 'package:buku_tahunan/mahasiswa.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MahasiswaCreate extends StatelessWidget {
  const MahasiswaCreate({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
        appBar: AppBar(
          title: const Text("Tambah Baru"),
        ),
        body: Column(children: [
        Form(
            key: formKey,
            child: Scrollbar(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      ...[
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                              filled: true,
                              labelText: "Nama mahasiswa"
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Nama tidak boleh kosong';
                            }
                            return null;
                          },
                          onChanged: (value) {
                          },
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                              filled: true,
                              labelText: "NIM mahasiswa"
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'NIM tidak boleh kosong';
                            }

                            return null;
                          },
                          onChanged: (value) {
                          },
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                              filled: true,
                              labelText: "Telepon mahasiswa"
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Telepon tidak boleh kosong';
                            }

                            return null;
                          },
                          onChanged: (value) {
                          },
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                              filled: true,
                              labelText: "Email mahasiswa"
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Email tidak boleh kosong';
                            }

                            return null;
                          },
                          onChanged: (value) {
                          },
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                              filled: true,
                              labelText: "Alamat mahasiswa"
                          ),
                          onChanged: (value) {
                          },
                        ),
                        FilledButton(
                          onPressed: () {
                            var valid = formKey.currentState!.validate();
                            if (!valid) {
                              return;
                            }

                            Get.defaultDialog(
                              title: "Sukses",
                              content: Column(
                                children: [
                                  const SizedBox(height: 10),
                                  const Text("Data mahasiswa berhasil ditambahkan dengan sukses."),
                                  const SizedBox(height: 10),
                                  ElevatedButton(
                                    onPressed: () {
                                      Get.to(const Mahasiswa()); // Close the dialog
                                    },
                                    child: const Text("OK"),
                                  ),
                                ],
                              ),
                            );

                          },
                          child: const Text("Submit")
                        )
                      ].expand((widget) => [
                        widget,
                        const SizedBox(
                          height: 24,
                        )
                      ],
                      )
                    ],
                  ),
                )
            )
        )
        ]),
    );
  }
}
