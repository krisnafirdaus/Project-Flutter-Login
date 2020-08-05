import 'package:flutter/material.dart';
import 'package:login_krisna/main.dart';
import 'font_style.dart';

class Register extends StatelessWidget {
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
                      padding: EdgeInsets.only(right: 5, left: 5),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Sign Up to get started ",
                              style: mainHeader,
                              textAlign: TextAlign.center,
                            ),
                          ),

                          Container(
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Username",
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
                              hintText: "Masukkan Username",
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.only(top: 10),
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
                        "have account ?",
                        style: register,
                      ),

                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) {
                                    return LoginPage();
                                  }
                              )
                          );
                        },
                        child: Text(" Login",
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
