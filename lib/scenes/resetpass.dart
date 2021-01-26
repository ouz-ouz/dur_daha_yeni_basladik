import 'dart:io';
import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mhp_app/app.dart';

void main() => runApp(ResetApp());
FirebaseAuth auth = FirebaseAuth.instance;
TextEditingController emailcont = TextEditingController();

class ResetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reset Pass',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  // f45d27
  // f5851f
  String mail;
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if(auth.currentUser!=null){ // Eğer kullanıcı daha önce oturum açmış ise giriş yapar
      debugPrint("Kullanıcı oturum açmış");
      Navigator.pushReplacement(
        //Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyApp()),
      );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE53935),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFE53935), Color(0xFFB71C1C)],
                  ),
                  borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(90))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: Image.network(
                      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F9%2F99%2FMHP_logo_Turkey.png%2F1200px-MHP_logo_Turkey.png&f=1&nofb=1",
                      width: 80,
                      height: 80,
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 32, right: 32),
                      child: Text(
                        'Şifre Sıfırla',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2.2,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 30),
              child: Column(
                children: <Widget>[
                  Form(
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width / 1.2,
                          height: 45,
                          padding:
                          EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(color: Colors.black12, blurRadius: 5)
                              ]),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: emailcont,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(
                                Icons.email,
                                color: Colors.grey,
                              ),
                              hintText: 'E-posta',
                            ),
                          ),
                        ),
                      ],

                    ),

                  ),
                  Spacer(),
                  //google vs
                  Spacer(),
                  Container(
                    padding: const EdgeInsets.only(top: 0, left: 16, right: 16, bottom: 4),
                    height: 45,
                    width: MediaQuery.of(context).size.width / 1.3,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFFE53935), Color(0xFFE53935)],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: MaterialButton(
                      onPressed: (){
                        reset(emailcont.text.toString().replaceAll(' ', ''));
                      },
                      child: Text(
                        'Şifreyi Sıfırla',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> reset(String mail) async {
    // ignore: unrelated_type_equality_checks
      try {
        await auth.sendPasswordResetEmail(email: mail);
        Fluttertoast.showToast(
            msg: "Sıfırlama linki E-posta Adresinize gönderildi\n" + mail,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 4,
            backgroundColor: Colors.black,
            textColor: Colors.red,
            fontSize: 16.0
        );
        Navigator.pushReplacement(
          //Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );

      }on FirebaseAuthException catch (e){
        Fluttertoast.showToast(
            msg: "Kayıtlı Kullanıcı bulunamadı\n" + e.code.toString(),
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.black,
            textColor: Colors.red,
            fontSize: 16.0
        );
      }


  }



}
