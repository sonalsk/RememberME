import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:alzheimers_game/shared/constants.dart';
import 'package:alzheimers_game/screens/ChatBot/dialog_flow.dart';
import 'package:alzheimers_game/profile/profile_page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: primaryTeal,
      body: Stack(
        children: [
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  Padding(
                      padding:
                          EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.arrow_back_ios),
                              color: white,
                              onPressed: () {},
                            ),
                            Container(
                                width: 125.0,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.chat),
                                      color: white,
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            new MaterialPageRoute(builder:
                                                (BuildContext context) {
                                          return FlutterFactsChatBot();
                                        }));
                                      },
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.account_circle),
                                      color: white,
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ProfilePage()));
                                      },
                                    )
                                  ],
                                ))
                          ])),
                  SizedBox(height: 20),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 45.0, top: 8.0, bottom: 40.0),
                    child: Row(
                      children: [
                        Text('RememberME',
                            style: GoogleFonts.acme(
                              fontSize: 40.0,
                              color: white,
                            ))
                      ],
                    ),
                  )
                ],
              )),
          Expanded(flex: 6, child: Container())
        ],
      ),
    );
  }
}
