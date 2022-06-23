import 'package:flutter/material.dart';

import '../Widgets/myDrawer.dart';

class gostergepaneli extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GostergeState();
}

class _GostergeState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Gösterge Paneli'), //Bu hepsinde olmalı en baştaki kısım
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Image.asset("resim/gosterge.jpeg", width: 400, height: 300),
              ExpansionTile(
                title: Text(
                  '1.Soğutucu bölme göstergesi',
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                ),
                trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                children: <Widget>[
                  ListTile(
                    title: Text('Soğutucu bölme sıcaklığı '
                        'ayarlanmak istendiğinde 6 numaralı '
                        'düğme ile soğutucu bölme göstergesi seçilir.'),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '2.Hata durumu göstergesi',
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                ),
                trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                children: <Widget>[
                  ListTile(
                    title: Text(
                        'Bu gösterge yüksek sıcaklık uyarısı ve hata uyarılarında yanar. Dondurucu bölme sıcaklığı dondurulmuş '
                        ' besinler için kritik seviyeye kadar ısındığında bu gösterge ile birlikte sıcaklık göstergesinde dondurucu bölmenin'
                        ' ulaştığı en yüksek sıcaklık ve sıcaklık birimi dönüşümlü olarak görüntülenir. Dondurucu bölmedeki gıdaları kontrol ediniz.'
                        ' Dondurucu bölme sıcaklığı yeterli seviyeye kadar soğuduğunda bu gösterge otomatik olarak kapatılır. Ayrıca bir sensör arızası'
                        ' oluştuğunda, bu gösterge yanar. Bu göstergenin yanması ile birlikte,sıcaklık göstergesinde dönüşümlü olarak “E” ve “1,2,3...” gibi'
                        ' rakamlar görüntülenir. Göstergedeki bu rakamlar, servis personeline hata hakkında bilgi verir.'),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '3.Sıcaklık ayar göstergesi',
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                ),
                trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                children: <Widget>[
                  ListTile(
                    title: Text('Soğutucu ve dondurucu bölmenin ayarlanan'
                        ' sıcaklığını gösterir.'),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '4.Tatil fonksiyonu düğmesi',
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                ),
                trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                children: <Widget>[
                  ListTile(
                    title: Text('Tatil fonksiyonunu aktiflemek için 5 numaralı'
                        ' sıcaklık ayar düğmesine 3sn.boyunca basın. Tatil'
                        ' fonksiyonu aktif olduğunda 9 numaralı gösterge yanar, '
                        'soğutucu bölmesi seçildiğinde sıcaklık göstergesinde “- -”'
                        ' ibaresi görünür ve soğutucu bölmesinde hiçbir aktif'
                        ' soğutma işlemi gerçekleştirilmez. Bu fonksiyonda,'
                        ' yiyeceklerinizi soğutucu bölmesinde tutmanız uygun'
                        ' değildir. Dondurucu bölme, ayarlanmış sıcaklığa göre'
                        ' soğutulmaya devam edecektir. Bu fonksiyonu iptal etmek'
                        ' için tekrar 5 numaralı sıcaklık ayar düğmesine 3 sn.boyunca basın.'),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '5.Sıcaklık ayar düğmesi',
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                ),
                trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                children: <Widget>[
                  ListTile(
                    title: Text('Seçilen bölmenin sıcaklığını ayarlamak için'
                        ' kullanılır. Dondurucu bölme -18 ve -24 derece ve soğutucu'
                        ' bölme 8 ve 1 derece arasında değişebilir.'),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '6.Bölme seçim düğmesi',
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                ),
                trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                children: <Widget>[
                  ListTile(
                    title: Text('Soğutucu ve dondurucu bölmeleri arasında'
                        ' geçiş yapmak için bölme seçim düğmesine basın.'),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '7.Dondurucu bölme göstergesi',
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                ),
                trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                children: <Widget>[
                  ListTile(
                    title: Text('Dondurucu bölme sıcaklığı ayarlanmak'
                        ' istendiğinde 6 numaralı düğme ile dondurucu'
                        ' bölme göstergesi seçilir.'),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '8.Ekonomi modu göstergesi',
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                ),
                trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                children: <Widget>[
                  ListTile(
                    title: Text('Buzdolabının, enerji tasarruf modunda'
                        ' çalıştığını belirtir. Bu gösterge, dondurucu'
                        ' bölmesinin sıcaklığı 18 dereceye ayarlanmışsa aktif olacaktır.'),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '9.Tatil fonksiyonu göstergesi',
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                ),
                trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                children: <Widget>[
                  ListTile(
                    title: Text('Tatil fonksiyonunun aktif olduğunu gösterir.'),
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
