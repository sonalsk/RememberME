import 'package:alzheimers_game/games/validWord2.dart';
import 'package:flutter/material.dart';
import 'package:alzheimers_game/shared/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:alzheimers_game/scoped_models/model.dart';

class ValidWordCheck1 extends StatefulWidget {
  @override
  _ValidWordCheckState createState() => _ValidWordCheckState();
}

class _ValidWordCheckState extends State<ValidWordCheck1> {
  int validWordCheck1 = 0;
  bool selected1 = false;
  bool selected2 = false;
  bool selected3 = false;
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MainModel>(
        builder: (BuildContext context, Widget child, MainModel model) {
      return Scaffold(
        backgroundColor: primaryTeal,
        appBar: AppBar(
          backgroundColor: primaryTeal,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
            color: white,
          ),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              alignment: Alignment.center,
              color: primaryTeal,
              child: Center(
                child: Text(
                    "Which of the following is a meaningful English Language Word?",
                    style: primaryFont),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(75),
                      topRight: Radius.circular(75))),
              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          elevation: 4.0,
                          onPressed: () {
                            setState(() {
                              selected1 = true;
                              selected2 = false;
                              selected3 = false;
                              validWordCheck1 = 0;
                            });
                          },
                          child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 50.0,
                                width: 120.0,
                                child: Text("zqky",
                                    style: GoogleFonts.signika(
                                        color: black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30.0)),
                              )),
                          color: selected1
                              ? primaryTeal.withOpacity(.5)
                              : white.withOpacity(.5),
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          elevation: 4.0,
                          onPressed: () {
                            setState(() {
                              selected1 = false;
                              selected2 = true;
                              selected3 = false;
                              validWordCheck1 = 0;
                            });
                          },
                          child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 50.0,
                                width: 120.0,
                                child: Text("jtqw",
                                    style: GoogleFonts.signika(
                                        color: black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30.0)),
                              )),
                          color: selected2
                              ? primaryTeal.withOpacity(.5)
                              : white.withOpacity(.5),
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          elevation: 4.0,
                          onPressed: () {
                            setState(() {
                              selected1 = false;
                              selected2 = false;
                              selected3 = true;
                              validWordCheck1 = 1;
                            });
                          },
                          child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 50.0,
                                width: 120.0,
                                child: Text("boat",
                                    style: GoogleFonts.signika(
                                        color: black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30.0)),
                              )),
                          color: selected3
                              ? primaryTeal.withOpacity(.5)
                              : white.withOpacity(.5),
                        )
                      ])),
            ),
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          backgroundColor: primaryTeal,
          child: Icon(Icons.arrow_forward_ios, color: white),
          onPressed: () {
            setState(() => model.addScore(validWordCheck1));
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ValidWordCheck2()));
          },
        ),
      );
    });
  }
}
