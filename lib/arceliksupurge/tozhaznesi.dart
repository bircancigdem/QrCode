import 'package:flutter/material.dart';

import '../Widgets/supurgeDrawer.dart';

class Tozhaznesi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TozhaznesiState();
}

class _TozhaznesiState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
            'Toz Haznesinin Takılması/Çıkarılması'), //Bu hepsinde olmalı en baştaki kısım
      ),
      drawer: supurgeDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "\nElektrik fişini çekin. Toz haznesini çıkarmak için,toz haznesi çıkarma düğmesine "
                    "basın, toz haznesi taşıma sapını tutarak toz haznesini çıkarın.\n",
                    style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  )
                ],
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
              Container(
                  child: Image.asset("resim/tozhaznesi.jpeg",
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
                    "\nToz haznesi doğru bir şekilde yerleştirildiğinde, üst kapağın yerine oturduğundan emin olun.\n",
                    style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
