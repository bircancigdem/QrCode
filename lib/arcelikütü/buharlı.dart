import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterfirebaseqrcodescan/Widgets/%C3%BCt%C3%BC.dart';

class BuharliUtuleme extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BuharliUtuleme();
}

class _BuharliUtuleme extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Buharlı Ütüleme'), //Bu hepsinde olmalı en baştaki kısım
      ),
      drawer: Utu(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Row(children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 3.0, right: 3.0),
                      child: Divider(
                        color: Colors.black,
                      )),
                ),
              ]),
              Column(
                children: <Widget>[
                  Text(
                    "\n1.Buhar ayar düğmesini (8) saat yönünün tersine çevirerek"
                    "istediğiniz buhar ayarına getirin.",
                    style: new TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              Container(
                  child: Image.asset("resim/buharlı1.PNG",
                      width: 400, height: 300)),
              Row(children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 3.0, right: 3.0),
                      child: Divider(
                        color: Colors.black,
                      )),
                ),
              ]),
              Column(
                children: <Widget>[
                  Text(
                    "\n2.Buharlı ütüleme yapacağınız zaman, sıcaklık "
                    "ayar düğmesinin (3) kırmızı buhar işareti ile"
                    "işaretlendirilmiş bölgede olmasına dikkat edin."
                    "Termostat ikaz ışığı (11) sondüğünde ve sıcaklık "
                    "gösterge ışığı (2) turuncu/kırmızı renge geldiğinde"
                    "taban sıcaklığı buhar elde edecek sıcaklığa gelmiştir.",
                    style: new TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              Container(
                  child: Image.asset("resim/buharlı2.PNG",
                      width: 300, height: 300)),
            ],
          ),
        ),
      ),
    );
  }
}
