import 'package:flutter/material.dart';
import 'package:flutterfirebaseqrcodescan/Widgets/camasirDrawer.dart';

class Kontrolpaneli extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PanelState();
}

class _PanelState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Kontrol Paneli'), //Bu hepsinde olmalı en baştaki kısım
      ),
      drawer: camasirDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                  child: InteractiveViewer(
                child: Image.asset("resim/kontrolpaneli.jpeg",
                    width: 400, height: 400),
              )),
              Text(
                '\n 1. Program Seçim düğmesi (En üsteki pozisyon Açma / Kapama) \n 2.Ekran \n'
                ' 3.Geç Başlatma Göstergesi \n 4.Program Takip göstergesi \n 5.Başla / Bekle tuşu \n'
                ' 6.Yardımcı fonksiyon tuşu 3 \n 7.Yardımcı fonksiyon tuşu 2 \n'
                ' 8.Yardımcı fonksiyon tuşu 1 \n 9.Sıkma Devri Ayar tuşu \n 10.Sıcaklık Ayar tuşu ',
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
