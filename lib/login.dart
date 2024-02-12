import 'package:buku_tahunan/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  String? username;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        automaticallyImplyLeading: false,
      ),
      body: Column(children: [
        Form(
            key: _formKey,
            child: Scrollbar(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      ...[
                        TextFormField(
                          autofocus: true,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                              filled: true,
                              hintText: "Your username",
                              labelText: "Username"
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Username tidak boleh kosong';
                            }
                            if (value!="admin") {
                              return 'Username salah';
                            }

                            return null;
                          },
                          onChanged: (value) {
                            username = value;
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              filled: true,
                              labelText: "Password"
                          ),
                          obscureText: true,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Password tidak boleh kosong';
                            }

                            if (value!="admin") {
                              return 'Password salah';
                            }

                            return null;
                          },
                          onChanged: (value) {
                            password = value;
                          },
                        ),
                        TextButton(
                            onPressed: () {
                              var valid = _formKey.currentState!.validate();
                              if (!valid) {
                                return;
                              }

                              Get.to(const Home());
                            },
                            child: const Text("Log In")
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
