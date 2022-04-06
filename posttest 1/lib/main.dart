import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("POSTTEST 1 Alfarezy 055"),
        backgroundColor: Color.fromARGB(255, 228, 5, 5),
      ),
      body: Container(
        padding: const EdgeInsets.all(1),
        width: lebar,
        height: tinggi,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 20, 31, 0),
                Color.fromARGB(255, 228, 5, 5),
                Color.fromARGB(255, 0, 0, 0),
              ]),
        ),
        child: Container(
          width: lebar / 1.5,
          height: tinggi / 5,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 228, 5, 5),
              Color.fromARGB(255, 0, 0, 0),
            ]),
            border: Border.all(
              color: Color.fromARGB(255, 0, 0, 0),
              width: 8,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          child: const Text(
            "Muhammad Alfarezy Cannavaro\nPOSTTEST 1\nPemerograman Mobile",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
