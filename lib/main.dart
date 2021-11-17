import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(samet());
}

class samet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Rastgele Bir Menü İçin Yemeğe Tıkla",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          backgroundColor: Colors.red,
        ),
        body: anasayfa(),
      ),
    );
  }
}

class anasayfa extends StatefulWidget {
  @override
  _anasayfaState createState() => _anasayfaState();
}

class _anasayfaState extends State<anasayfa> {
  int corba_No = 1;
  int yemek_No = 1;
  int tatli_No = 1;
  List<String> corbaAdlari = [
    'Mercimek',
    'Tarhana',
    'Tavuksuyu',
    'Düğün Çorbası',
    'Yoğurt Çorbası'
  ];
  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Balık'
  ];
  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Tiremusu',
    'Dondurma'
  ];
  void RastgeleSayi() {
    setState(() {
      yemek_No = Random().nextInt(5) + 1;
      corba_No = Random().nextInt(5) + 1;
      tatli_No = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: FlatButton(
                      color: Colors.black,
                      onPressed: RastgeleSayi,
                      child: Image.asset("assets/corba_$corba_No.jpg"))),
            ),
            Divider(height: 10),
            Text(
              corbaAdlari[corba_No - 1],
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            Container(
              height: 50,
              width: 255,
              child: Divider(
                height: 10,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: FlatButton(
                      color: Colors.black,
                      onPressed: RastgeleSayi,
                      child: Image.asset("assets/yemek_$yemek_No.jpg"))),
            ),
            Text(
              yemekAdlari[yemek_No - 1],
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            Container(
              width: 255,
              height: 50,
              child: Divider(
                height: 10,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: FlatButton(
                      color: Colors.black,
                      onPressed: RastgeleSayi,
                      child: Image.asset("assets/tatli_$tatli_No.jpg"))),
            ),
            Text(
              tatliAdlari[tatli_No - 1],
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
