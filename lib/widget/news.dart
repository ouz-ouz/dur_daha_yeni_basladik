import 'package:flutter/material.dart';

void main() {
  runApp(new news());
}
class news extends StatelessWidget {

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
    return Scaffold(
      body:
      new Container(
        child:
        new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Image.network(
                'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.explicit.bing.net%2Fth%3Fid%3DOIP.cIjTmimqRq6bqC3np7D7-AHaEK%26pid%3DApi&f=1',
                fit:BoxFit.fill,
              ),

              new Text(
                "Başlık",
                style: new TextStyle(fontSize:12.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto"),
              ),

              new Text(
                "alt metin",
                style: new TextStyle(fontSize:12.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto"),
              ),

              new Text(
                "Haber",
                style: new TextStyle(fontSize:12.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto"),
              ),

              new Image.network(
                'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.explicit.bing.net%2Fth%3Fid%3DOIP.cIjTmimqRq6bqC3np7D7-AHaEK%26pid%3DApi&f=1',
                fit:BoxFit.fill,
              ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new IconButton(
                      icon: const Icon(Icons.insert_emoticon),
                      onPressed:iconButtonPressed,
                      iconSize: 48.0,
                      color: const Color(0xFF000000),
                    ),

                    new IconButton(
                      icon: const Icon(Icons.insert_emoticon),
                      onPressed:iconButtonPressed,
                      iconSize: 48.0,
                      color: const Color(0xFF000000),
                    ),

                    new IconButton(
                      icon: const Icon(Icons.insert_emoticon),
                      onPressed:iconButtonPressed,
                      iconSize: 48.0,
                      color: const Color(0xFF000000),
                    ),

                    new IconButton(
                      icon: const Icon(Icons.insert_emoticon),
                      onPressed:iconButtonPressed,
                      iconSize: 48.0,
                      color: const Color(0xFF000000),
                    ),

                    new IconButton(
                      icon: const Icon(Icons.insert_emoticon),
                      onPressed:iconButtonPressed,
                      iconSize: 48.0,
                      color: const Color(0xFF000000),
                    )
                  ]

              )
            ]

        ),

        color: const Color(0xFFffffff),
        padding: const EdgeInsets.all(0.0),
        alignment: Alignment.center,
      ),

    );
  }
  void iconButtonPressed(){}

}