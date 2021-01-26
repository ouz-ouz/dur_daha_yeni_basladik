import 'package:flutter/material.dart';
import 'package:mhp_app/scenes/baskan/devlet_bahceli.dart';


void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BahceliHayati()
  )
);



class BahceliHayati extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(2.0),
            //LOGO Gelecek
            child: new Image.network('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F9%2F99%2FMHP_logo_Turkey.png%2F1200px-MHP_logo_Turkey.png&f=1&nofb=1'),
          ),
          backgroundColor: Colors.red[600],
          title: Text("Devlet BAHÇELİ'NİN Hayatı", textAlign: TextAlign.right , style: TextStyle(color: Colors.white)),
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
        ),
        body: ListView(
          children: [
            Container(
              child:Image.network("https://cdntr1.img.sputniknews.com/img/103400/68/1034006833_0:6:1200:681_1200x0_80_0_1_fbda9ab55b0c92a61f0213351d1effca.jpg",fit: BoxFit.fill,
              width : MediaQuery.of(context).size.width,
              height: 270,
            )),
            SizedBox(
            height: 40.0,
            ),
            Container(
             child: Text("Bahçelinin hayati...",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            ),
          ],
        ),
      ),
    );
  }
}