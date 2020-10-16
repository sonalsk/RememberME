import 'package:flutter/material.dart';
import 'package:alzheimers_game/shared/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class GameScreen extends StatefulWidget {
  final heroTag;
  final gameName;
  final gameCategory;
  final test;

  GameScreen({this.heroTag, this.gameName, this.gameCategory, this.test});

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
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
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          // title:
          // centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
              color: white,
            )
          ],
        ),
        body: ListView(children: [
          Stack(children: [
            Container(
              height: screenHeight,
              width: screenWidth,
              color: Colors.transparent,
            ),
            Positioned(
              top: 75.0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45.0),
                      topRight: Radius.circular(45.0)),
                  color: white,
                ),
                height: screenHeight,
                width: screenWidth,
              ),
            ),
            Positioned(
                top: 30.0,
                left: screenWidth / 2 - 100.0,
                child: Hero(
                  tag: widget.heroTag,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.heroTag),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 200.0,
                    width: 200.0,
                  ),
                )),
            Positioned(
                top: 280.0,
                left: 25.0,
                right: 25.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.gameName,
                        style: GoogleFonts.acme(
                          fontSize: 40.0,
                          color: primaryBlue,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(height: 20.0),
                    Text(
                        'About the game a few lines, what the game is, what it tests etc expressed briefly in a few words',
                        style: GoogleFonts.signika(fontSize: 18.0)),
                    Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Container(
                            height: screenHeight - 700,
                            color: grey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Tutorial Video"),
                                Center(
                                  child: IconButton(
                                    icon: Icon(Icons.play_arrow),
                                    onPressed: () {},
                                    color: white,
                                  ),
                                ),
                              ],
                            ))),
                  ],
                )),
            Positioned(
              top: screenHeight - 250,
              right: 25.0,
              left: 25.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FractionallySizedBox(
                    widthFactor: 0.9,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => widget.test));
                        },
                        color: primaryBlue,
                        splashColor: primaryTeal.withOpacity(0.7),
                        elevation: 2.0,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Play",
                              style: GoogleFonts.signika(
                                fontSize: 26.0,
                                fontWeight: FontWeight.bold,
                                color: white,
                              )),
                        )),
                  ),
                ],
              ),
            )
          ])
        ]));
  }
}
