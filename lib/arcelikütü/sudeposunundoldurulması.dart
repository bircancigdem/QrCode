import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterfirebaseqrcodescan/Widgets/%C3%BCt%C3%BC.dart';

class Sudeposu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Sudeposu();
}

class _Sudeposu extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
            'Su Deposunun Doldurulması'), //Bu hepsinde olmalı en baştaki kısım
      ),
      drawer: Utu(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.blue,
                  size: 45,
                ),
                title: Text(
                  'Su deposuna parfüm, sirke, kola, kireç çözücü ürünler, ütülemeye yardımcı olacak ürünler ve diğer kimyasallar koymayın.',
                  style: new TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.warning_amber,
                  color: Colors.blue,
                  size: 45,
                ),
                title: Text(
                  'Eğer bulunduğunuz yerdeki musluk suyu aşırı kireçli ise musluk suyunu içme suyu ile karıştırarak kullanmanızı tavsiye ederiz.',
                  style: new TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                ),
              ),
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
                    "\n 1.Cihazın fişini mutlaka prizden çekin. Buhar ayar  "
                    " düğmesini (8) saat yönünde kapalı konuma getirin.",
                    style: new TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              Container(
                  child: Image.asset("resim/sudeposu1.PNG",
                      width: 400, height: 300)),
              Column(),
              Container(
                  child: Image.asset("resim/sudeposu2.PNG",
                      width: 300, height: 300)),
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
                    "\n 2.Ütüdeki su doldurma kapağını "
                    " (7) açarak ve yatay durumdaki"
                    " ütüyü çok hafif su taşmayacak"
                    " şekilde\n öne doğru eğin. Su"
                    " deposunun üzerindeki Max \n çizgisini"
                    " geçmemesine dikkat edin.",
                    style: new TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              Container(
                  child: Image.asset("resim/sudeposu3.PNG",
                      width: 300, height: 300)),
            ],
          ),
        ),
      ),
    );
  }
}
