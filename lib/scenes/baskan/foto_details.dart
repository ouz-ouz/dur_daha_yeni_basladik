import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String imagePath;
  DetailsPage(
      {@required this.imagePath,
 });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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