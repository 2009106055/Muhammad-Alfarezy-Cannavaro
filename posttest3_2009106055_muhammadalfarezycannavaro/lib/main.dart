import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _State();
}

enum Jenis { Playstation3, Playstation4, Playstation5 }

class _State extends State<MyHomePage> {
  String namaDepan = '', namaBelakang = '';
  bool isAsuransi = false;
  Jenis jenis = Jenis.Playstation3;
  final ctrlNamaDepan = TextEditingController();
  final ctrlNamaBelakang = TextEditingController();
  @override
  void dispose() {
    ctrlNamaDepan.dispose();
    ctrlNamaBelakang.dispose();
  }

  String getJenis(Jenis? value) {
    if (value == Jenis.Playstation4) {
      return "Playstation 4 + HDD 500GB";
    } else if (value == Jenis.Playstation5) {
      return "Playstation 5 + HDD 1TB";
    }
    return 'Playstation 3 + HDD 320GB';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "EZY's Playstation",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 0, 255, 255),
      ),
      backgroundColor: Color.fromARGB(255, 153, 163, 155),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          Column(
            children: [
              Text(
                "SILAHKAN MENGISI NAMA DAN PILIH PLAYSTATION",
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
              ),
              TextField(
                controller: ctrlNamaDepan,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Isikanlah Nama Depan",
                  labelText: "Nama Depan",
                ),
              ),
              SizedBox(height: 30),
              TextFormField(
                controller: ctrlNamaBelakang,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Isikanlah Nama Belakang",
                  labelText: "Nama Belakang",
                ),
              ),
              ListTile(
                title: Text("Playstation 3"),
                leading: Radio(
                  groupValue: jenis,
                  value: Jenis.Playstation3,
                  onChanged: (Jenis? value) {
                    setState(() {
                      jenis = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text("Playstation 4"),
                leading: Radio(
                  groupValue: jenis,
                  value: Jenis.Playstation4,
                  onChanged: (Jenis? value) {
                    setState(() {
                      jenis = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text("Playstation 5"),
                leading: Radio(
                  groupValue: jenis,
                  value: Jenis.Playstation5,
                  onChanged: (Jenis? value) {
                    setState(() {
                      jenis = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text("Keamanan Pengiriman"),
                leading: Checkbox(
                  value: isAsuransi,
                  onChanged: (bool? value) {
                    setState(() {
                      isAsuransi = value!;
                    });
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    namaDepan = ctrlNamaDepan.text;
                    namaBelakang = ctrlNamaBelakang.text;
                  });
                },
                child: Text(
                  "Tampilan",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Text(
                "Nama Pemesan : $namaDepan $namaBelakang",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 18,
                ),
              ),
              Text(
                "Keamanan : ${isAsuransi ? "Memakai Asuransi" : "Tidak Ada Asuransi"}",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Text(
                "Console : ${getJenis(jenis)}",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
