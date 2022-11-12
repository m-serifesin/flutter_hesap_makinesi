// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, //debug kaldırma
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hesap Makinesi"),
        backgroundColor: Colors.orange,
        leading: IconButton( //ikon ekleme kodu
          icon: Icon(
            Icons.calculate,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  num s1 = 0;
  num s2 = 0;
  num sonuc = 0;

  TextEditingController a1 = TextEditingController(); // text alan kontrol, değişim, hesap
  TextEditingController a2 = TextEditingController();

  void topla() {
    setState(() {
      s1 = num.parse(a1.text);
      s2 = num.parse(a2.text);
      sonuc = s1 + s2;
    });
  }

  void cikar() {
    setState(() {
      s1 = num.parse(a1.text);
      s2 = num.parse(a2.text);
      sonuc = s1 - s2;
    });
  }

  void carp() {
    setState(() {
      s1 = num.parse(a1.text);
      s2 = num.parse(a2.text);
      sonuc = s1 * s2;
    });
  }

  void bol() {
    setState(() {
      s1 = num.parse(a1.text);
      s2 = num.parse(a2.text);
      sonuc = s1 / s2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, //yer ayarlama
          children: [
            TextField(
              controller: a1,
              decoration: InputDecoration(hintText: "Birinci Sayıyı Giriniz"),
            ),
            TextField(
              controller: a2,
              decoration: InputDecoration(hintText: "İkinci Sayıyı Giriniz"),
            ),
            Text(
              "$sonuc",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            RaisedButton(
              onPressed: () {
                topla();
              },
              child: Text("Toplama"),
            ),
            RaisedButton(
              onPressed: () {
                cikar();
              },
              child: Text("Çıkarma"),
            ),
            RaisedButton(
              onPressed: () {
                bol();
              },
              child: Text("Bölme"),
            ),
            RaisedButton(
              onPressed: () {
                carp();
              },
              child: Text("Çarpma"),
            ),
          ],
        ),
      ),
    );
  }
}
