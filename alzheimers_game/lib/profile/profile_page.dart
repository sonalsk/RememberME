import 'package:alzheimers_game/screens/services/authservice.dart';
import 'package:alzheimers_game/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: primaryBlue,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: white,
        ),
        backgroundColor: primaryBlue,
        elevation: 0.0,
      ),
      body: Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
                flex: 4,
                child: Stack(children: [
                  Container(
                    color: primaryBlue,
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
                              child: Text("My Profile",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.acme(
                                    fontSize: 60,
                                    fontWeight: FontWeight.bold,
                                    color: white,
                                  ))),
                          Expanded(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                ClipOval(
                                    child: Image.asset(
                                  'assets/images/profile_pic.png',
                                  width: 180,
                                  height: 180,
                                  fit: BoxFit.cover,
                                )),
                                    SizedBox(height: 10,),

                                    RaisedButton(
                                      child: Text('Signout'),
                                      onPressed: () {
                                        AuthService().signOut();
                                        Navigator.pop(context);
                                      },
                                    ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Raghu Nandan',
                                        style: GoogleFonts.signika(
                                          fontSize: 26,
                                          fontWeight: FontWeight.w500,
                                          color: white,
                                        )),
                                    SizedBox(width: 7),
                                    Text('55',
                                        style: GoogleFonts.signika(
                                          fontSize: 26,
                                          fontWeight: FontWeight.w500,
                                          color: white,
                                        )),
                                  ],
                                ),
                                SizedBox(height: 7),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.location_on,
                                        color: white.withOpacity(0.9)),
                                    SizedBox(width: 7),
                                    Text('Ram Gali No.6',
                                        style: GoogleFonts.signika(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: white.withOpacity(0.9),
                                        )),


                                  ],
                                )
                              ]))
                        ])),
                  ),
                ])),
          ],
        )
      ]),
    );
  }
}

Widget _buildStatCard(String gameName, String category, double avgScore) {
  return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      shadowColor: grey,
      elevation: 5.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 7.0),
            child: Text(gameName,
                style: GoogleFonts.signika(
                    fontSize: 35.0,
                    color: primaryBlue,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 15.0),
            child: Text(category,
                style: GoogleFonts.signika(
                  fontSize: 18.0,
                  color: primaryBlue,
                )),
          ),
        ),
        Image.asset('assets/images/statistics.png', height: 120,)
      ]));
}
