import 'package:flutter/material.dart';
import 'package:flutterfirebaseqrcodescan/Widgets/klima.dart';

class DisUnite extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DisUnite();
}

class _DisUnite extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dış Ünite'), //Bu hepsinde olmalı en baştaki kısım
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
                    Image.asset("resim/dışünite.PNG", width: 400, height: 400),
              )),
              Text(
                '\n 15.Hava çıkış menfezi \n 16.Hava giriş menfezi(arka ve yanda) \n'
                ' 17.İç-dış ünite boru bağlantı vanaları \n ',
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
