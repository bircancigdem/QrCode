import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterfirebaseqrcodescan/Widgets/%C3%BCt%C3%BC.dart';

class KuruUtuleme extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _KuruUtuleme();
}

class _KuruUtuleme extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Kuru Ütüleme'), //Bu hepsinde olmalı en baştaki kısım
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
                    "\n1.Buhar ayar düğmesini (8) saat yönünün çevirerek"
                    "buhar ayar düğmesini kapalı konuma getirdiğinizde"
                    "kuru ütüleme yapabilirsiniz.",
                    style: new TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              Container(
                  child:
                      Image.asset("resim/kuru1.PNG", width: 400, height: 300)),
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
                    "\n2.ütüde su olmasında fayda vardır. Gerekirse "
                    "su püskürtme düğmesini (10) kullanabilirsiniz.",
                    style: new TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              Container(
                  child:
                      Image.asset("resim/kuru2.PNG", width: 300, height: 300)),
            ],
          ),
        ),
      ),
    );
  }
}
