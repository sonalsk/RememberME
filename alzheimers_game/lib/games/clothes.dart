import 'package:alzheimers_game/games/identify1.dart';
import 'package:alzheimers_game/games/thankyou.dart';
import 'package:alzheimers_game/scoped_models/model.dart';
import 'package:flutter/material.dart';
import 'package:alzheimers_game/shared/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scoped_model/scoped_model.dart';

class ClothesCheck extends StatefulWidget {
  @override
  _ClothesCheckState createState() => _ClothesCheckState();
}

class _ClothesCheckState extends State<ClothesCheck> {
  int clothesCheck = 0;

  bool selected1 = false;
  bool selected2 = false;
  bool selected3 = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ScopedModelDescendant<MainModel>(
        builder: (BuildContext context, Widget child, MainModel model) {
      return Scaffold(
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
        backgroundColor: primaryTeal,
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              alignment: Alignment.center,
              color: primaryTeal,
              child: Center(
                child: Text(
                    "Are you able to wear your clothes, socks, shoes etc properly on your own?",
                    style: primaryFont),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              width: width,
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(75),
                      topRight: Radius.circular(75))),
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 30.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                              clothesCheck += 2;
                            });
                          },
                          child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 50.0,
                                width: width,
                                child: Text("Yes",
                                    style: GoogleFonts.signika(
                                        color: black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22.0)),
                              )),
                          color: selected1
                              ? primaryTeal.withOpacity(.5)
                              : white.withOpacity(.5),
                        ),
                        SizedBox(height: 10),
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
                              clothesCheck += 1;
                            });
                          },
                          child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 50.0,
                                width: width,
                                child: Text("Yes but I face some problems",
                                    style: GoogleFonts.signika(
                                        color: black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22.0)),
                              )),
                          color: selected2
                              ? primaryTeal.withOpacity(.5)
                              : white.withOpacity(.5),
                        ),
                        SizedBox(height: 10),
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
                              clothesCheck += 0;
                            });
                          },
                          child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                alignment: Alignment.center,
                                height: 50.0,
                                width: width,
                                child: Text("No",
                                    style: GoogleFonts.signika(
                                        color: black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22.0)),
                              )),
                          color: selected3
                              ? primaryTeal.withOpacity(.5)
                              : white.withOpacity(.5),
                        ),
                      ])),
            ),
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          backgroundColor: primaryTeal,
          child: Icon(Icons.arrow_forward_ios, color: white),
          onPressed: () {
            setState(() => model.addScore(clothesCheck));
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => IdentifyObj1()));
          },
        ),
      );
    });
  }
}
