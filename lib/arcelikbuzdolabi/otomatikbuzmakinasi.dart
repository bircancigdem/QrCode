import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Widgets/myDrawer.dart';

class Otomatikbuzmakinasi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BuzmakinasiState();
}

class _BuzmakinasiState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:
            Text('Otomatik buz makinası'), //Bu hepsinde olmalı en baştaki kısım
      ),
      drawer: MyDrawer(),
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
                  'Otomatik buz makineli ürünlerde, buz dökme esnasında ses oluşabilir. Oluşan bu ses normal olup, hata belirtisi değildir.',
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
                    "\nOtomatik buz makinası, buzdolabında "
                    "kolayca buz yapmanızı sağlar. Buz makinasından buz elde etmek için "
                    "soğutucu bölmedeki su tankını çıkarın, suyla doldurun ve yerine takın.",
                    style: new TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              Container(
                  child: Image.asset("resim/sutankı.jpeg",
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
                    "İlk buzlar yaklaşık 2 saat içinde dondurucu "
                    "bölmedeki Buz makinası çekmecesinde "
                    "hazır olacaktır.\n\nSu tankı tamamıyla dolu"
                    " yerleştirildikten boşalana kadar yaklaşık"
                    " 60-70 küp buz elde edilebilir.\n\nSu tankındakı su"
                    " 2-3 hafta beklediyse değiştirilmelidir.",
                    style: new TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              Container(
                  child: Image.asset("resim/sukoyma.jpeg",
                      width: 300, height: 300)),
            ],
          ),
        ),
      ),
    );
  }
}
