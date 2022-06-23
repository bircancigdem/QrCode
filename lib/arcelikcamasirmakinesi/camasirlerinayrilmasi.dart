import 'package:flutter/material.dart';
import 'package:flutterfirebaseqrcodescan/Widgets/camasirDrawer.dart';

class Camasirlarinayrilmasi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CamasirState();
}

class _CamasirState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
            'Çamaşırların Ayrılması'), //Bu hepsinde olmalı en baştaki kısım
      ),
      drawer: camasirDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              ExpansionTile(
                leading: Image.asset(
                  "resim/yıkama.png",
                ),
                title: Text('Yıkama',
                    style: new TextStyle(
                      fontSize: 25.0,
                      color: Colors.deepPurple,
                    )),
                trailing: Icon(
                  Icons.arrow_drop_down_circle_outlined,
                ),
                children: <Widget>[
                  Image.asset(
                    "resim/yıkamasembol.jpeg",
                    width: 340,
                    height: 300,
                  ),
                ],
              ),
              ExpansionTile(
                leading: Image.asset("resim/kurutma.png"),
                title: Text('Kurutma',
                    style: new TextStyle(
                      fontSize: 25.0,
                      color: Colors.deepPurple,
                    )),
                trailing: Icon(
                  Icons.arrow_drop_down_circle_outlined,
                ),
                children: <Widget>[
                  Image.asset(
                    "resim/kurutmasembol.jpeg",
                    width: 340,
                    height: 300,
                  ),
                ],
              ),
              ExpansionTile(
                leading: Image.asset(
                  "resim/ütü.png",
                ),
                title: Text('Ütü',
                    style: new TextStyle(
                      fontSize: 25.0,
                      color: Colors.deepPurple,
                    )),
                trailing: Icon(
                  Icons.arrow_drop_down_circle_outlined,
                ),
                children: <Widget>[
                  Image.asset(
                    "resim/ütüsembol.jpeg",
                    width: 340,
                    height: 300,
                  ),
                ],
              ),
              ExpansionTile(
                leading: Image.asset(
                  "resim/ağartıcı.png",
                ),
                title: Text('Ağartıcı',
                    style: new TextStyle(
                      fontSize: 25.0,
                      color: Colors.deepPurple,
                    )),
                trailing: Icon(
                  Icons.arrow_drop_down_circle_outlined,
                ),
                children: <Widget>[
                  Image.asset(
                    "resim/ağartıcı sembol.jpeg",
                    width: 340,
                    height: 300,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
