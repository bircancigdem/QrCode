import 'package:flutter/material.dart';
import 'package:flutterfirebaseqrcodescan/Widgets/klima.dart';

class IcUnite extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _IcUnite();
}

class _IcUnite extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('İç Ünite'), //Bu hepsinde olmalı en baştaki kısım
      ),
      drawer: Klima(),
      body: SingleChildScrollView(
        child: Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                  child: InteractiveViewer(
                child:
                    Image.asset("resim/icünite.PNG", width: 400, height: 400),
              )),
              Text(
                '\n 1.Anti bakteriyel filtre \n 2.Ön panel \n'
                ' 3.Manuel çalıştırma tuşu \n 4.Hava çıkış menfezi \n 5.Hava giriş menfezi \n'
                ' 6.Çalışma durumu göstergesi \n 7.Açma/Kapama göstergesi \n'
                ' 8.Uyku konum göstergesi \n 9.Zamanlayıcı göstergesi \n 10.Defrost göstergesi \n'
                ' 11.Neo plasma göstergesi\n 12.Dijital gösterge \n'
                ' 13.Sinyal alıcı \n 14.Neo plasma\n'
                ' 15.Kontrol kutusu kapağı\n',
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
