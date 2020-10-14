import 'package:alzheimers_game/games/threeObjects.dart';
import 'package:alzheimers_game/screens/home/gamescreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:alzheimers_game/shared/constants.dart';

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
        body: ListView(children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 25.0, left: 10.0, right: 10.0),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: Icon(Icons.menu),
                              color: white,
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.account_circle),
                              color: white,
                              onPressed: () {},
                            )
                          ],
                        ))
                  ])),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.only(left: 35.0, top: 10.0),
            child: Row(
              children: [
                Text('RememberME',
                    style: GoogleFonts.acme(
                      fontSize: 35.0,
                      color: white,
                    ))
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
              height: screenHeight - 175.0,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(75.0),
                    topRight: Radius.circular(75.0)),
              ),
              child: ListView(
                primary: false,
                padding: EdgeInsets.only(
                  left: 25.0,
                  right: 20.0,
                ),
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Container(
                        height: screenHeight - 300,
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            _buildGameCard('assets/memory-game.png',
                                'Memory Game', 'Testing Memory Power'),
                            _buildGameCard('assets/gtc.png', 'Match Color',
                                'Testing Memory Power'),
                            _buildGameCard('assets/ttt.png', 'Tic Tac Toe',
                                'Testing Memory Power'),
                            _buildGameCard('assets/snake-game.png',
                                'Snake Game', 'Testing Memory Power')
                          ],
                        )),
                  )
                ],
              )),
        ]));
  }

  Widget _buildGameCard(String imgPath, String gameName, String gameCategory) {
    return Padding(
        padding:
            EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => GameScreen(
                    heroTag: imgPath,
                    gameName: gameName,
                    gameCategory: gameCategory)));
          },
          child: Card(
              color: primaryTeal,
              //margin: EdgeInsetsGeometry.infinity,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17.0)),
              shadowColor: grey,
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, bottom: 20.0, right: 10.0, left: 10.0),
                        child: Hero(
                            tag: imgPath,
                            child: Image(
                              image: AssetImage(imgPath),
                              fit: BoxFit.cover,
                            )),
                      ),
                      SizedBox(width: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(gameName,
                                style: GoogleFonts.signika(
                                    fontSize: 35.0,
                                    color: white,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15.0),
                            child: Text(gameCategory,
                                style: GoogleFonts.signika(
                                  fontSize: 18.0,
                                  color: white,
                                )),
                          ),
                          FractionallySizedBox(
                            widthFactor: 0.7,
                            child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => threeProducts()));
                                },
                                color: white,
                                splashColor: primaryTeal.withOpacity(0.7),
                                elevation: 2.0,
                                child: Text("Play",
                                    style: GoogleFonts.signika(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: primaryTeal,
                                    ))),
                          ),
                        ],
                      ),
                    ]),
              )),
        ));
  }
}
