import 'package:flutter/material.dart';

import '../Widgets/myDrawer.dart';

class Derindondurucubilgileri extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_DerindondurucuState();

}

class _DerindondurucuState extends State{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Derin Dondurucu Bilgisi'), //Bu hepsinde olmalı en baştaki kısım
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(child: Image.asset("resim/dondurucu.jpeg", width:400, height:200)),
              Column(children: <Widget>[
                Text("IEC 62552 standartlarına göre, her 100 litre dondurucu bölme hacmi için "
                    "için ürünün 25 derece oda sıcaklığında 4.5 kg'lık gıda maddesini -18 derece veya daha "
                    "düşük sıcaklıklarda 24 saatte dondurabilmesini gerektirir.\n" ,
                  style: new TextStyle(
                    fontSize: 15.0, color: Colors.black,
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
              ]
              ),
              Column(children: <Widget>[
                Text("\nGıda maddelerinin uzun süre korunması ancak -18 derece ve daha düşük sıcaklıkta mümkündür.\n" ,
                  style: new TextStyle(
                    fontSize: 15.0, color: Colors.black,
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
              ]
              ),
              Column(children: <Widget>[
                Text("\nGıda maddelerinin tazeliğini (derin dondurucuda -18 derece ve daha düşük"
                    " sıcaklıklarda) aylarca koruyabilirsiniz. Dondurulacak gıda maddeleri daha önce "
                    "dondurulan yiyeceklerin kısmen çözülmelerini önlemek için onlarla temas ettirilmemelidir.\n" ,
                  style: new TextStyle(
                    fontSize: 15.0, color: Colors.black,
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
              ]
              ),
              Column(children: <Widget>[
                Text("\nSebzelerin dondurulmuş halde depolama sürelerini uzatmak için"
                    " haşlayın ve suyunu süzün. Süzdükten sonra hava geçirmeyen ambalajlara"
                    " koyun ve dondurucuya yerleştirin. Muz, domates, marul, kereviz, haşlanmış yumurta,"
                    " patates vb. besinler dondurulmaya uygun değildir. Bu besinlerin dondurulması"
                    " durumunda sadece besin değerleri ve yeme kaliteleri olumsuz etkilenecektir. İnsan"
                    " sağlığını tehdit eden bir bozulma söz konusu değildir.\n" ,
                  style: new TextStyle(
                    fontSize: 15.0, color: Colors.black,
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