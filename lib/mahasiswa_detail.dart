import 'package:flutter/material.dart';
import 'mahasiswa.dart';

class MahasiswaDetail extends StatelessWidget {
  final MahasiswaData mahasiswaData;

  const MahasiswaDetail(this.mahasiswaData);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xFF2196F3),
                  Color(0xFF2196F3),
                ], begin: Alignment.topCenter, end: Alignment.center)),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(top: _height / 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            // backgroundImage: const AssetImage('assets/01.png'),
                            backgroundColor: Colors.white,
                            radius: _height / 10,
                          ),
                          SizedBox(
                            height: _height / 35,
                          ),
                          Text(
                            mahasiswaData.name,
                            style: const TextStyle(
                                fontSize: 24.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            mahasiswaData.nim,
                            style: const TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: _height / 2.5),
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: _height / 2.6,
                        left: _width / 50,
                        right: _width / 50),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: _height / 20),
                          child: Column(
                            children: <Widget>[
                              infoChild(_width, Icons.email, 'info@unsia.ac.id'),
                              infoChild(_width, Icons.call, '08123456789'),
                              infoChild(_width, Icons.home, 'JL MH Tamrin 70'),
                              Padding(
                                padding: EdgeInsets.only(top: _height / 30),
                                child: Container(
                                  width: _width / 3,
                                  height: _height / 20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF2196F3),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(_height / 40)),
                                      boxShadow: const [
                                         BoxShadow(
                                            color: Colors.black87,
                                            blurRadius: 2.0,
                                            offset: Offset(0.0, 1.0))
                                      ]),
                                  child: const Center(
                                    child: Text('FOLLOW ME',
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                        )
                                    ),
                                  ),
                                )
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text("Detail"),
    //   ),
      // body: Padding(
      //   padding: const EdgeInsets.all(16.0),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Text("Nama: ${mahasiswaData.name}"),
      //       Text("NIM: ${mahasiswaData.nim}"),
      //       const Text("Telepon: 08123456789"),
      //       const Text("Email: info@unsia.ac.id"),
      //       const Text("Alamat: JL MH Tamrin"),
      //     ],
      //   ),
      // ),
    // );
  }

  Widget infoChild(double width, IconData icon, data) => Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: InkWell(
      child: Row(
        children: <Widget>[
          SizedBox(
            width: width / 10,
          ),
          Icon(
            icon,
            color: const Color(0xFF2196F3),
            size: 30.0,
          ),
          SizedBox(
            width: width / 20,
          ),
          Text(data)
        ],
      ),
    ),
  );
}
