import 'package:flutter/material.dart';

import '../Widgets/klima.dart';

class KlimaCalismasi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _KlimaCalismasi();
}

class _KlimaCalismasi extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Klima Çalışması'), //Bu hepsinde olmalı en baştaki kısım
      ),
      drawer: Klima(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              new Container(
                  child: InteractiveViewer(
                child: Image.asset("resim/klima1.PNG"),
              )),
              ExpansionTile(
                title: Text('Açma / Kapama',
                    style: new TextStyle(
                      fontSize: 16.0,
                      color: Colors.deepPurple,
                    )),
                trailing: Icon(
                  Icons.arrow_drop_down_circle_outlined,
                ),
                children: <Widget>[
                  ListTile(
                    title: Text(
                        '\n Uzaktan kumandanızı, iç ünite üzerinden bulunan kontrol'
                        ' paneline yönlendirip, kumanda üzerindeki "açma / kapama" '
                        ' tuşuna basınız. Bu durumda ön paneldeki "açma / kapama" '
                        ' göstergesi yanacak ve klimadan uyarı sinyali gelecektir.'),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'Çalışma Konumları',
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.deepPurple,
                  ),
                ),
                trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                children: <Widget>[
                  ListTile(
                    title: Text('Split klimanız 4 farklı çalışma konumda'
                        'kullanabilirsiniz.\n'
                        '1.Soğutma konumu\n'
                        '2. A.Ç.S konumu \n'
                        '3. Nem giderme konumu \n'
                        '4. Isıtma konumu'),
                  ),
                ],
              ),
              new Container(
                  child: InteractiveViewer(
                child: Image.asset("resim/klima2.PNG"),
              )),
              Column(
                children: <Widget>[
                  Text(
                    "Uzaktan kumandanızın kapağını açarak çalışma "
                    " konumunu seçme tuşuna basınız. Tuşa her  "
                    " bastığınızda konum değişecek ve sırasıyla"
                    " soğutma, A.Ç.S, nem giderme ve ısıtma"
                    " konumlarına geçecektir. Daha sonra çalışma"
                    " konumlarından birini seçiniz. Oda sıcaklığını"
                    " ve fan hızını, kumandanızın üzerindeki oda"
                    " sıcaklığı ayar ve fan hızı ayar tuşları ile ayarlayınız.",
                    style: new TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              new Container(
                  child: InteractiveViewer(
                child: Image.asset("resim/klima3.PNG"),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
