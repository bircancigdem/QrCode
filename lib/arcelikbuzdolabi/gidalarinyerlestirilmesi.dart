import 'package:flutter/material.dart';

import '../Widgets/myDrawer.dart';

class Gidalarinyerlestirilmesi extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_GidayerlestirmeState();

}

class _GidayerlestirmeState extends State{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Gıdaların Yerleştirilmesi'), //Bu hepsinde olmalı en baştaki kısım
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              new Container(
                  child: InteractiveViewer(
                    child: Image.asset("resim/yerlestirme.jpeg", width:400, height:350),
                  )
              ),
              ExpansionTile(

                title: Text('Dondurucu bölme rafları',
                    style: new TextStyle(
                      fontSize: 16.0, color: Colors.deepPurple,
                    )
                ),
                trailing: Icon(Icons.arrow_drop_down_circle_outlined,),
                children: <Widget>[
                  ListTile(
                    title: Text('Et, balık, dondurma, sebze vb. gibi farklı donmuş gıdalar.'),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Soğutucu bölme rafları',
                  style: new TextStyle(
                    fontSize: 16.0, color: Colors.deepPurple,
                  ),
                ),
                trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                children: <Widget>[
                  ListTile(
                    title: Text('Tencere, kapalı tabak ve kapalı kaplardaki'
                        ' gıdalar, yumurta (kapalı kapta)'),
                  ),
                ],

              ),
              ExpansionTile(
                title: Text('Soğutucu bölme kapı rafları',
                  style: new TextStyle(
                    fontSize: 16.0, color: Colors.deepPurple,
                  ),
                ),
                trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                children: <Widget>[
                  ListTile(
                    title: Text('Küçük ve paketlenmiş gıda ya da içecekler'),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Sebzelik',
                  style: new TextStyle(
                    fontSize: 16.0, color:Colors.deepPurple,
                  ),
                ),
                trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                children: <Widget>[
                  ListTile(
                    title: Text('Sebzeler ve meyveler'),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Taze gıda bölmesi',
                  style: new TextStyle(
                    fontSize: 16.0, color: Colors.deepPurple,
                  ),
                ),
                trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                children: <Widget>[
                  ListTile(
                    title: Text('Şarküteri ürünleri (kahvaltılık ürünler ,kısa '
                        'sürede tüketilecek et ürünleri)'),
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