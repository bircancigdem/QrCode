import 'package:flutter/material.dart';

import '../Widgets/supurgeDrawer.dart';

class Cihazinteknikozellikleri extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OzelliklerState();
}

class _OzelliklerState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
            'Cihazın Teknik Özellikleri'), //Bu hepsinde olmalı en baştaki kısım
      ),
      drawer: supurgeDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                  child: InteractiveViewer(
                child: Image.asset("resim/teknikozellik.jpeg",
                    width: 400, height: 400),
              )),
              Text(
                '\n 1.Toz haznesi \n 2.Toz haznesi taşıma sapı \n'
                ' 3.Toz haznesi üst kapağı \n 4.Kablo sarıcı düğmesi \n 5.Toz haznesi ama düğmesi \n'
                ' 6.On-off çalıştırma düğmesi \n 7.Park konumu \n'
                ' 8.Fişli elektrik kablosu \n 9.Hepa hava çıkış kapağı \n 10.Küçük döner tekerlek \n'
                ' 11.Hortum giriş adaptörü \n 12.Hortum grubu çıkarma düğmesi \n'
                ' 13.Esnek hortum \n 14.Tutma sapı \n 15.Metal teleskopik uzatma borusu \n',
                style: new TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
              new Container(
                  child: InteractiveViewer(
                child: Image.asset("resim/teknikozellik2.jpeg",
                    width: 350, height: 300),
              )),
              Text(
                '\n16.Toz haznesi boşaltma düğmesi \n17.Ayarlı parke halı fırçası \n18.Dar ağızlı uç \n'
                '19.Mobilya fırçası \n21.Sünger filtre \n22.Motor koruma filtresi \n23.Slikon grubu \n24.Hepa çıkış filtresi \n',
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
