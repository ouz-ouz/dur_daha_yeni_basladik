import 'package:flutter/material.dart';
import 'package:mhp_app/scenes/baskan/devlet_bahceli.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Bahceli_Sozleri()
  )
);


class Bahceli_Sozleri extends StatelessWidget {

  List<int> listeNumaralari   =   List.generate(30, (index) => index);
  List<String> listeAltBaslik =   List.generate(30,(index)  => "Liste elemanı alt baslik $index");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Başkan'ın Konuşmaları", textAlign: TextAlign.right , style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.close),
              onPressed: () {
                Navigator.pushReplacement( //Login ekranına gönderir
                  //Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Bahceli_Dashboard()),
                );
              }
          ),
        ],
        leading: new Container(),
      ),
      body : ListView(children: listeNumaralari.map((e) => Container(
        child: Card(
          color: Colors.red.shade700,
          margin: EdgeInsets.all(10),
          elevation: 10,
          child: ListTile(
            leading: CircleAvatar(
              child:Image.network("https://seeklogo.com/images/M/mhp-new-logo-C532F77C38-seeklogo.com.png"),
            ),
            title: Text("$e . başbuğ alparslan türkeş sözü", style: TextStyle(color: Colors.white)),
            trailing: Icon(Icons.add_circle),
          ),
        ),
      ),).toList(),

      ),
    );
  }
}