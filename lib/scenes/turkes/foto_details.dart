import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String imagePath;
  DetailsPage(
      {@required this.imagePath,
 });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(2.0),
          //LOGO Gelecek
          child: new Image.network('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F9%2F99%2FMHP_logo_Turkey.png%2F1200px-MHP_logo_Turkey.png&f=1&nofb=1'),
        ),
        backgroundColor: Colors.red[600],
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(null),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
                Container(
              child:Image.network(imagePath,fit: BoxFit.fill,
              width : MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/1.3,
            )),
          ],
        ),
      ),
    );
  }
}