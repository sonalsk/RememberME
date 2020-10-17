import 'package:alzheimers_game/games/identify3.dart';
import 'package:flutter/material.dart';
import 'package:alzheimers_game/shared/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:alzheimers_game/scoped_models/model.dart';

class IdentifyObj2 extends StatefulWidget {
  @override
  _IdentifyObj2State createState() => _IdentifyObj2State();
}

class _IdentifyObj2State extends State<IdentifyObj2> {
  int obj2Score = 0;
  bool selected1 = false;
  bool selected2 = false;

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
        body: Column(children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              alignment: Alignment.center,
              color: primaryTeal,
              child: Center(
                child: Text("Identify the object showed in the picture below?",
                    style: primaryFont),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(75),
                      topRight: Radius.circular(75))),
              child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: (MediaQuery.of(context).size.height) / 3,
                          width: (MediaQuery.of(context).size.width) * 0.7,
                          child: Image.asset(
                            "assets/images/pencil.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          elevation: 4.0,
                          onPressed: () {
                            setState(() {
                              selected1 = true;
                              selected2 = false;
                              obj2Score = 1;
                            });
                          },
                          child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 70.0,
                                //width: 120.0,
                                child: Text("Pencil",
                                    style: GoogleFonts.signika(
                                        color: black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30.0)),
                              )),
                          color: selected1
                              ? primaryTeal.withOpacity(.5)
                              : white.withOpacity(.5),
                        ),
                        SizedBox(height: 30.0),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          elevation: 4.0,
                          onPressed: () {
                            setState(() {
                              selected1 = false;
                              selected2 = true;
                              obj2Score = 0;
                            });
                          },
                          child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 70.0,
                                //width: 120.0,
                                child: Text("Ball",
                                    style: GoogleFonts.signika(
                                        color: black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30.0)),
                              )),
                          color: selected2
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
            setState(() => model.addScore(obj2Score));
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => IdentifyObj3()));
          },
        ),
      );
    });
  }
}