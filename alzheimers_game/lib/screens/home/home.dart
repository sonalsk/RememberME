import 'package:alzheimers_game/evaluation/evaluation.dart';
import 'package:alzheimers_game/games/appname.dart';
import 'package:alzheimers_game/games/date.dart';
import 'package:alzheimers_game/profile/profile_page.dart';
import 'package:alzheimers_game/screens/ChatBot/dialog_flow.dart';
import 'package:alzheimers_game/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: primaryTeal,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
            color: white,
          ),
          actions: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      width: 125.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(Icons.chat),
                            color: white,
                            onPressed: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return FlutterFactsChatBot();
                              }));
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.account_circle),
                            color: white,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ProfilePage()));
                            },
                          )
                        ],
                      ))
                ]),
          ],
          backgroundColor: primaryTeal,
          elevation: 0.0,
        ),
        body: Stack(
          children: [
            Column(children: [
              Expanded(
                  flex: 1,
                  child: Stack(children: [
                    Container(
                      color: primaryTeal,
                      // decoration: BoxDecoration(
                      //     color: primaryTeal,
                      //     borderRadius: BorderRadius.only(
                      //       bottomLeft: Radius.circular(50),
                      //       bottomRight: Radius.circular(50),
                      //     )),
                    ),
                    SafeArea(
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 5.0),
                          child: Column(children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15.0, left: 30),
                                  child: Text("Remember ME",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.acme(
                                        fontSize: 45,
                                        fontWeight: FontWeight.bold,
                                        color: white,
                                      )),
                                )),
                          ])),
                    ),
                  ])),
              Expanded(
                  flex: 5,
                  child: Container(
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(75),
                            //topRight: Radius.circular(50),
                          )),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30.0, horizontal: 20.0),
                          // child: CarouselSlider(
                          //   viewportFraction: 0.5,
                          //   enlargeCenterPage: true,
                          //   enableInfiniteScroll: false,
                          //   height: screenHeight * 0.3,
                          //   scrollDirection: Axis.vertical,
                          //   items: [
                          //     _buildStatCard(
                          //         'Clock Game', 'Thinking Power', null),
                          //     _buildStatCard(
                          //         'Clock Game', 'Thinking Power', null),
                          //   ],
                          // ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => DateCheck()));
                                  },
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 20, right: 20),
                                    height: screenHeight * 0.2,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: LinearGradient(colors: [
                                          primaryTeal,
                                          primaryTeal.withOpacity(0.6)
                                        ])),
                                    child: Center(
                                        child: Text("Take Test",
                                            style: GoogleFonts.acme(
                                              fontSize: 40.0,
                                              color: white,
                                              fontWeight: FontWeight.bold,
                                            ))),
                                  ),
                                ),
                                SizedBox(height: 30.0),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Evaluation()));
                                  },
                                  child: Container(
                                    margin:
                                        EdgeInsets.only(left: 20, right: 20),
                                    height: screenHeight * 0.2,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: LinearGradient(colors: [
                                          primaryTeal,
                                          primaryTeal.withOpacity(0.6)
                                        ])),
                                    child: Center(
                                        child: Text("View Evaluation",
                                            style: GoogleFonts.acme(
                                              fontSize: 40.0,
                                              color: white,
                                              fontWeight: FontWeight.bold,
                                            ))),
                                  ),
                                ),
                              ])))),
            ]),
          ],
        ));
  }
}

Widget _buildStatCard(String gameName, String category, double avgScore) {
  return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      shadowColor: grey,
      elevation: 5.0,
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/tests/objects.png'),
            fit: BoxFit.cover,
          )),
        ),
      ));
}
