import 'package:flutter/material.dart';

import '../Widgets/supurgeDrawer.dart';

class Montaj extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MontajState();
}

class _MontajState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cihazın Montajı'), //Bu hepsinde olmalı en baştaki kısım
      ),
      drawer: supurgeDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "\n Hortum grubunu süpürgenizin hava girişine takın. Esnek hortum "
                    "tık sesi çıkararak yerine oturur.\n",
                    style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              Container(
                  child: Image.asset("resim/montaj1.jpeg",
                      width: 400, height: 200)),
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
                    "\n Teleskopik borunun geniş ucunu esnek hortumun diğer ucuna takın.\n",
                    style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              Container(
                  child: Image.asset("resim/montaj2.jpeg",
                      width: 400, height: 200)),
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
                    "\n Ayarlı parke halı fırçasını teleskopik boruya takın.\n",
                    style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              Container(
                  child: Image.asset("resim/montaj3.jpeg",
                      width: 400, height: 200)),
            ],
          ),
        ),
      ),
    );
  }
}
