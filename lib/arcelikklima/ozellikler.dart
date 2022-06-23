import 'package:flutter/material.dart';
import 'package:flutterfirebaseqrcodescan/Widgets/klima.dart';

class KlimaOzellik extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _KlimaOzellik();
}

class _KlimaOzellik extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Özellikler'), //Bu hepsinde olmalı en baştaki kısım
      ),
      drawer: Klima(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              ExpansionTile(
                title: Text(
                  '1.Nem Giderme Konumu',
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                ),
                trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Sıcaklığın nispeten düşük '
                      'fakat nemin yüksek olduğu durumda,  '
                      'hava konfor şartlarını sağlamak'
                      ' için geliştirilmiş bir sistemdir.',
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '2.Akıllı çalışma sistemin konumu',
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                ),
                trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Klimanız oda sıcaklığını hissederek,'
                      ' fan hızını ve ayarlanmış sıcaklığı otomatik'
                      ' olarak kontrol etmesidir.',
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '3.Programlı(başlama / bitirme) fonksiyonu',
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                ),
                trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                children: <Widget>[
                  ListTile(
                    title: Text(
                        'Klimanızın belirlemiş olduğunuz zaman ve şartlarda'
                        ' kendi kendine çalışmasını veya durmasını ayarlar.'
                        'Bu sayede elektrik tasarrufu sağlanarak, serin ve rahat bir ortamda'
                        ' maksimum konfor elde edilir.'),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '4.Otomatik hava akımı kontrolü',
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                ),
                trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                children: <Widget>[
                  ListTile(
                    title: Text('Aşağı yukarı hareket edebilen yatay'
                        ' kanatlar ve sağa sola hareket edebilen dikey kanatlar sayesinde'
                        ' hava akımını istediğiniz açıda yönlendirebilirsiniz. '
                        'Bu sayede bulunduğunuz ortamda homojen bir sıcaklık '
                        ' dağılımı sağlamak mümkün olacaktır.'),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '5.Otomatik temizle',
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                ),
                trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Klima durdurulduktan sonra,'
                      ' içerisindeki nemi kurutarak toz ve '
                      ' ve bakteri oluşumunu önler. '
                      'Daha hijyenik bir ortam sağlar.',
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '6.Uyku konumu otomatik kontrolü',
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                ),
                trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                children: <Widget>[
                  ListTile(
                    title: Text('1-7 saat arasındaki belirlediniz süre'
                        ' sonunda, klimanızın çalışmasını otomatik olarak'
                        ' durduracak olan bu sistemde, sıcaklık ayarı '
                        ' 30 dakika sonra 1 derece, bir saat sonra ise 2'
                        ' derece yükselecektir. Böylece ertesi sabah size güç'
                        ' zindelik veren, daha rahat ve dinlendirici bir '
                        ' uyku sağlamış olacaktır.'),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '7.Uzaktan kumanda',
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                ),
                trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                children: <Widget>[
                  ListTile(
                    title: Text('Parmağınızın tek bir hareketi ile,'
                        ' klimanızın bütün fonksiyonlarını,'
                        'oturduğunuz yerden rahat gerçekleştirebilirsiniz.'),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  '8.Jet cool',
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                ),
                trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                children: <Widget>[
                  ListTile(
                    title: Text('Bulunduğunuz ortamın kısa bir sürede soğuması'
                        ' için jet cool tuşuna basmanız yeterli olacaktır.'
                        ' Bu konumda klimanız 18 derece ayar sıcaklığında'
                        ' 30 dk. kesintisiz olarak çalışacaktır.'),
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
