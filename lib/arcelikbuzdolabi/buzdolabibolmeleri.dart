import 'package:flutter/material.dart';
import 'package:flutterfirebaseqrcodescan/Widgets/myDrawer.dart';

class Buzdolabibolmeleri extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BolmelerState();
}

class _BolmelerState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:
            Text('Buzdolabı Bölmeleri'), //Bu hepsinde olmalı en baştaki kısım
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                  child: InteractiveViewer(
                child:
                    Image.asset("resim/bolmeler.jpeg", width: 400, height: 400),
              )),
              Text(
                '\n 1.Soğutucu bölme kapı rafı \n 2.Yumurtalık \n'
                ' 3.Şişe rafı \n 4.Kayar saklama kabı \n 5.Ayarlanabilir ayaklar \n'
                ' 6.Derin dondurucu bölmesi \n 7.Hızlı dondurma bölmesi \n'
                ' 8.Buzmatik \n 9.Sıfır derece bölmesi \n 10.Aydınlatma lambası \n'
                ' 11. Soğutucu bölme cam rafı \n 12.Sıcaklık ayar düğmesi \n'
                ' 12.Soğutucu bölme \n 13.Dondurucu bölme \n 14.Buzluk çekmecesi',
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
