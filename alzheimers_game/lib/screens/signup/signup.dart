import 'package:alzheimers_game/animations/fadeanimation.dart';
import 'package:alzheimers_game/screens/home/home.dart';
import 'package:alzheimers_game/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:alzheimers_game/shared/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: SingleChildScrollView(
          child: Container(
              child: Column(
            children: [
              Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/backgrounds/background.png'),
                    fit: BoxFit.fill,
                  )),
                  child: Stack(children: [
                    Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
                        child: FadeAnimation(
                            1,
                            Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/backgrounds/light-1.png')))))),
                    Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(
                            1.3,
                            Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/backgrounds/light-2.png')))))),
                    Positioned(
                        right: 40,
                        top: 40,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(
                            1.5,
                            Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/backgrounds/clock.png')))))),
                    Positioned(
                        child: FadeAnimation(
                            1.6,
                            Container(
                                margin: EdgeInsets.only(top: 50.0),
                                child: Center(
                                    child: Text(
                                  'SignUp',
                                  style: GoogleFonts.acme(
                                    fontSize: 45.0,
                                    color: white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ))))),
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 30.0, right: 30.0, top : 20.0),
                  child: Column(children: [
                    FadeAnimation(
                      1.8,
                      Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 140, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10))
                            ]),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(color: grey[100]))),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Username",
                                    hintStyle: GoogleFonts.signika(
                                      fontSize: 18.0,
                                      color: grey[400],
                                    )),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(color: grey[100]))),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Age",
                                    hintStyle: GoogleFonts.signika(
                                      fontSize: 18.0,
                                      color: grey[400],
                                    )),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(color: grey[100]))),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "PhoneNumber",
                                    hintStyle: GoogleFonts.signika(
                                      fontSize: 18.0,
                                      color: grey[400],
                                    )),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "OTP",
                                    hintStyle: GoogleFonts.signika(
                                      fontSize: 18.0,
                                      color: grey[400],
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 70),
                    FadeAnimation(
                      2,
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Home()));
                        },
                                              child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(143, 140, 251, 1),
                                Color.fromRGBO(143, 140, 251, .6)
                              ])),
                          child: Center(
                              child: Text("SignUp",
                                  style: GoogleFonts.acme(
                                    fontSize: 24.0,
                                    color: white,
                                    fontWeight: FontWeight.bold,
                                  ))),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    FadeAnimation(
                        1.5,
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LogIn()));
                          },
                          child: Text("Already have an account? Login",
                              style: GoogleFonts.signika(
                                fontSize: 16.0,
                                color: Color.fromRGBO(143, 140, 251, 1),
                              )),
                        ))
                  ]))
            ],
          )),
        ));
  }
}
