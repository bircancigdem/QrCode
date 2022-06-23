import 'package:flutter/material.dart';
import 'package:flutterfirebaseqrcodescan/Widgets/ütü.dart';

class UtuGenelBakis extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _UtuGenelBakis();
}

class _UtuGenelBakis extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Ütü Genel Bakış'), //Bu hepsinde olmalı en baştaki kısım
      ),
      drawer: Utu(),
      body: SingleChildScrollView(
        child: Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                  child: InteractiveViewer(
                child: Image.asset("resim/ütü genel bakis.PNG",
                    width: 400, height: 400),
              )),
              Text(
                '\n 1.Elektirk kablosu \n 2.Otomatik kapanma ışığı \n'
                ' 3.Sıcaklık ayar düğmesi \n 4.Kireç temizleme düğmesi(self clean) \n 5.Ütüleme tabanı \n'
                ' 6.Su püskürtme \n 7.Su doldurma kapağı \n'
                ' 8.Buhar ayar düğmesi \n 9.Şok buhar düğmesi \n 10.Su püskürtme düğmesi \n'
                ' 11.Termostat ikaz ışığı',
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
