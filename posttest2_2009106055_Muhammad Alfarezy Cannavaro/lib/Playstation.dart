import 'dart:ui';
import 'package:flutter/material.dart';

class Playstation extends StatelessWidget {
  const Playstation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "M.ALFAREZY.C 055",
          style: TextStyle(
            color: Colors.black,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 0, 255, 255),
      ),
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: ListView(
        children: [
          Text(
            "EZY's Playstation",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 255, 255),
            ),
          ),
          Text(
            "Playstation Store in Samarinda City",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 0, 255, 255),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 250,
                margin: EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(65),
                  image: DecorationImage(
                    image: AssetImage("assets/ps.png"),
                  ),
                ),
              ),
              Text(
                "\n\n Penjualan Playstation yang berada di daerah Samarinda Kota",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 255, 255),
                  fontStyle: FontStyle.italic,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ListContainer(isActive: true, menu: "Produk Lainnya"),
                  ListContainer(menu: "Pesan Sekarang"),
                ],
              ),
              Button()
            ],
          ),
        ],
      ),
    );
  }
}

class ListContainer extends StatelessWidget {
  const ListContainer({Key? key, this.isActive = false, required this.menu})
      : super(key: key);

  final bool isActive;
  final String menu;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 100,
      margin: EdgeInsets.only(top: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive
            ? Color.fromARGB(255, 0, 255, 255)
            : Color.fromARGB(255, 0, 255, 255),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 2,
          color: Color.fromARGB(255, 224, 207, 207),
        ),
      ),
      child: Text(
        menu,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: isActive ? Colors.black : Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      margin: EdgeInsets.only(top: 50),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 0, 255, 255),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 2, color: Color.fromARGB(255, 224, 207, 207)),
      ),
      child: Text(
        "HUBUNGI SAYA\n(0851-7168-1131)",
        style: TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    );
  }
}
