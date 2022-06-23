import 'package:flutter/material.dart';
import 'package:flutterfirebaseqrcodescan/Widgets/camasirDrawer.dart';

class Genelgorunum extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GorunumState();
}

class _GorunumState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Genel Görünüm'), //Bu hepsinde olmalı en baştaki kısım
      ),
      drawer: camasirDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                  child: InteractiveViewer(
                child: Image.asset("resim/genelgorunum.jpeg",
                    width: 400, height: 400),
              )),
              Text(
                '\n 1.Elektrik kablosu \n 2.Üst tabla \n'
                ' 3.Kontrol paneli \n 4.Su tahliye hortumu \n 5.Yükleme kapağı \n'
                ' 6.Filtre kapağı \n 7.Ayarlanabilir ayaklar \n'
                ' 8.Deterjan çekmecesi',
                style: new TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
