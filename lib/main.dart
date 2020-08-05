import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'font_style.dart';
import 'register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/foto.png'),
                  ),

                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              "Welcome to \n My Portofolio",
                              style: mainHeader,
                              textAlign: TextAlign.center,
                            ),
                          ),

                          Container(
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Email",
                                  style: form,
                                )
                              ],
                            ),
                          ),

                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blueAccent)
                              ),
                              hintText: "Masukkan Email",
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Password",
                                  style: form,
                                )
                              ],
                            ),
                          ),

                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blueAccent)
                              ),
                              hintText: "Masukkan Password",
                            ),
                          ),

                          Container(
                            alignment: Alignment(1.0, 0.0),
                            padding: EdgeInsets.only(top: 5),
                            child: InkWell(
                              onTap: () {},
                              child: Text(
                                "Lupa Password",
                                style: regis,
                                ),
                            ),
                          ),

                          Card(
                            color: Colors.orange,
                            elevation: 2,
                            margin: EdgeInsets.all(15),
                            child: Container(
                              height: 50,
                              width: 125,
                              child: InkWell(
                                splashColor: Colors.amber,
                                onTap: (){},
                                child: Center(
                                  child: Text(
                                    "Sign In",
                                    style: login,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "don’t have account ?",
                        style: register,
                      ),

                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Register();
                              }
                            )
                          );
                        },
                        child: Text(" Register",
                        style: regis,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



