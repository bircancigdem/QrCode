import 'package:flutter/material.dart';
import 'package:flutterfirebaseqrcodescan/Widgets/supurgeDrawer.dart';

class Filtretemizleme extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FiltretemizlemeState();
}

class _FiltretemizlemeState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
            'Filtrelerin Temizlenmesi'), //Bu hepsinde olmalı en baştaki kısım
      ),
      drawer: supurgeDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "\nHer zaman, filtreyi cihaza takmadan önce hem filtrelerin hem de cihazın tümüyle kuru olduklarından emin olun."
                    " Temizlik ya da bakım işlemlerini gerçekleştirmeden önce, cihazın şebeke elektriği ile bağlantısını kesin.\n",
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
              Column(
                children: <Widget>[
                  Text(
                    "\nTemizlik maddeleri kullanmayın ve hassas filtre yüzeyine gereksiz bir şekilde dokunmayın.\n",
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
              Column(
                children: <Widget>[
                  Text(
                    "\nHEPA filtrenin beyaz kaplı malzemesi zaman içerisinde solacaktır. Bu normal olup, filtrenin performansını etkilemez.\n",
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
              Column(
                children: <Widget>[
                  Text(
                    "\n1. HEPA filtrenin dış kısmını temizlemek için, küçük bir fırça kullanın (bu modelde bulunmamaktadır). Böylece, "
                    "tozun kabası temizlenir. Filtreyi ılık suda yıkayın.\n",
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
                  child: Image.asset("resim/filtre.jpeg",
                      width: 500, height: 180)),
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
                    "\n3. Fazla suyu temizlemek için filtre çerçevesine hafifçe vurun. Bu işlemi 4 kez tekrar edin ve kendiliğinden"
                    " kuruması için bekletin. Kurutma işleminde herhangi bir ısıtıcı cihaz kullanmayın.\n",
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
