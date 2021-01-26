import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../app.dart';

void main() {
  runApp(new SettingsApp());
}
String photo=FirebaseAuth.instance.currentUser.photoURL;
String ad=FirebaseAuth.instance.currentUser.displayName;
String mail=FirebaseAuth.instance.currentUser.email;

class SettingsApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(2.0),
          //LOGO Gelecek
          child: new Image.network('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F9%2F99%2FMHP_logo_Turkey.png%2F1200px-MHP_logo_Turkey.png&f=1&nofb=1'),
        ),
        backgroundColor: Colors.red[600],
        title: Text("Ayarlar", textAlign: TextAlign.right , style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.close),
              onPressed: () {
                Navigator.pushReplacement( //Login ekranına gönderir
                  //Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              }
          ),
        ],
      ),
      body:
      new Container(
        child:
        new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Image.network(photo, fit:BoxFit.fill,),

                    new IconButton(
                      icon: const Icon(Icons.insert_emoticon),
                      onPressed:iconButtonPressed,
                      iconSize: 48.0,
                      color: const Color(0xFF000000),
                    )
                  ]

              ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      ad,
                      style: new TextStyle(fontSize:12.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w200,
                          fontFamily: "Roboto"),
                    ),

                    new IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed:iconButtonPressed,
                      iconSize: 48.0,
                      color: const Color(0xFF000000),
                    )
                  ]

              ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      "asdas",
                      style: new TextStyle(fontSize:12.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w200,
                          fontFamily: "Roboto"),
                    ),

                    new IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed:iconButtonPressed,
                      iconSize: 48.0,
                      color: const Color(0xFF000000),
                    )
                  ]

              ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      mail,
                      style: new TextStyle(fontSize:12.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w200,
                          fontFamily: "Roboto"),
                    ),

                    new IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed:iconButtonPressed,
                      iconSize: 48.0,
                      color: const Color(0xFF000000),
                    )
                  ]

              ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      "qWerty1",
                      style: new TextStyle(fontSize:12.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w900,
                          fontFamily: "Roboto"),
                    ),

                    new IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed:iconButtonPressed,
                      iconSize: 48.0,
                      color: const Color(0xFF000000),
                    )
                  ]

              ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      "qWerty1",
                      style: new TextStyle(fontSize:12.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w200,
                          fontFamily: "Roboto"),
                    ),

                    new IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed:iconButtonPressed,
                      iconSize: 48.0,
                      color: const Color(0xFF000000),
                    )
                  ]

              )
            ]

        ),

        color: const Color(0xFFffffff),
        padding: const EdgeInsets.fromLTRB(1.0, 50.0, 1.0, 1.0),
        alignment: Alignment.center,
      ),

    );
  }
  void iconButtonPressed(){}

}