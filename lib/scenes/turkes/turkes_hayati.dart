import 'package:flutter/material.dart';

import 'alparslan_turkes.dart';


void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home:TurkesHayati()
  )
);



class TurkesHayati extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(2.0),
          //LOGO Gelecek
          child: new Image.network('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F9%2F99%2FMHP_logo_Turkey.png%2F1200px-MHP_logo_Turkey.png&f=1&nofb=1'),
        ),
        backgroundColor: Colors.red[600],
        title: Text("BAŞBUĞ'UN Hayatı", textAlign: TextAlign.right , style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.close),
              onPressed: () {
                Navigator.pushReplacement( //Login ekranına gönderir
                  //Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Turkes_Dashboard()),
                );
              }
          ),
        ],
      ),

        // there is one more way to do a scroll view design by using ListView Widget
        // first you need to remove SingleChildScrollView

        // change Column widget with ListView
        body: ListView(
          children: [
            Container(
              child:Image.network("https://cdn.yenicaggazetesi.com.tr/news/343275.jpg",fit: BoxFit.fill,
              width : MediaQuery.of(context).size.width,
              height: 200,
            )),
            SizedBox(
            height: 30.0,
            ),
            Container(
             child: Text("vur ulan köpek dölü",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            ),
          ],
        ),
      ),
    );
  }
}