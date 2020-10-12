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
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: primaryColor,
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
                borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
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
                          children: [
                            _buildListTile('assets/memory-game.png', 'Memory Game', 'Testing Memory Power'),
                            _buildListTile('assets/memory-game.png', 'Memory Game', 'Testing Memory Power'),
                            _buildListTile('assets/memory-game.png', 'Memory Game', 'Testing Memory Power'),
                            _buildListTile('assets/memory-game.png', 'Memory Game', 'Testing Memory Power')],
                        )),
                  )
                ],
              )),
        ]));
  }

  Widget _buildListTile(String imgPath, String gameName, String category) {
  return Padding(
    padding: EdgeInsets.only(left: 30.0, right: 10.0, top: 30.0),
    child: InkWell(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
            children: [
              Hero(
                tag: imgPath,
                child: Image(
                  image: AssetImage(imgPath),
                  fit: BoxFit.cover,
                  height: 75.0,
                  width: 75.0,
                )
              ),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    gameName,
                    style: GoogleFonts.signika(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    category,
                    style: GoogleFonts.signika(
                      fontSize: 15.0,
                      color: grey,
                    )
                  ),
                ],
              ),
            ]
          )),
          IconButton(
            icon: Icon(Icons.play_arrow),
            color: black,
            onPressed: () {}),
        ],
      )
    )
  );
}
}
