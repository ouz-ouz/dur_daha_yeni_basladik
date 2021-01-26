import 'package:flutter/material.dart';
import '../../app.dart';
import 'bahceli_hayati.dart';
import 'bahceli_sozleri.dart';
import 'bahceli_foto_home.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Bahceli_Dashboard()
  )
);

class Bahceli_Dashboard extends StatelessWidget {
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
          title: Text("Genel Başkan", textAlign: TextAlign.right , style: TextStyle(color: Colors.white)),
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
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Container(
              child:Image.network(
                "https://i4.hurimg.com/i/hurriyet/75/0x0/5e7e1ad567b0a910d4df2ee1.jpg",fit: BoxFit.fill,
              width : MediaQuery.of(context).size.width,
              height: 260,
            )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "   GENEL BAŞKAN DEVLET BAHÇELİ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Wrap(
                  spacing:20,
                  runSpacing: 20.0,
                  children: <Widget>[
                    SizedBox(
                      width:160.0,
                      height: 160.0,
                      child: Card(
                        color: Colors.red,
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                        child:Center(
                          
                          child: MaterialButton(
                            onPressed: () =>       Navigator.pushReplacement(
      //Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BahceliHayati()),        
      ),
                            padding: const EdgeInsets.all(1.0),
                            child: Column(
                            children: <Widget>[
                           Image.network("https://image.flaticon.com/icons/png/512/49/49041.png",width: 80,height: 80),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Hayatı",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0
                                ),
                              ),
                            ],
                            ),
                          )
                        ),
                      ),
                    ),
                    SizedBox(
                      width:160.0,
                      height: 160.0,
                      child: Card(

                        color: Colors.red,
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                        ),
                        child:Center(
                            child: MaterialButton(
                              onPressed: (){
                                      Navigator.pushReplacement(
      //Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Bahceli_Sozleri()),        
      );
                              },
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Image.network("https://cdn.iconscout.com/icon/free/png-256/second-life-555849.png",width: 80.0,height: 80.0),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "Sözleri",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      width:160.0,
                      height: 160.0,
                      child: Card(

                        color: Colors.red,
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                        ),
                        child:Center(
                            child: MaterialButton(
                              onPressed: () {
                                      Navigator.pushReplacement(
      //Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Bahceli_Foto_Home()),        
      );
                              },
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Image.network("https://cdn2.iconfinder.com/data/icons/picol-vector/32/view-512.png",width: 80.0,height: 80.0),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "Resimleri",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      width:160.0,
                      height: 160.0,
                      child: Card(

                        color: Colors.red,
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                        ),
                        child:Center(
                            child: MaterialButton(
                              onPressed: (){},
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 10.0,
                                  ),                                  
                                  Image.network("https://seeklogo.com/images/M/mhp-new-logo-C532F77C38-seeklogo.com.png",width: 120.0,height: 80.0),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Text(
                                    "...",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      )
    );
  }
}