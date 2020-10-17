import 'package:alzheimers_game/scoped_models/model.dart';
import 'package:flutter/material.dart';
import 'package:alzheimers_game/shared/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scoped_model/scoped_model.dart';


class Evaluation extends StatefulWidget {
  @override
  _EvaluationState createState() => _EvaluationState();
}

class _EvaluationState extends State<Evaluation> {
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
        body: Center(child:
            ScopedModelDescendant<MainModel>(builder: (context, child, model) {
          return Stack(children: [
            Column(
              children: [
                Expanded(
                    flex: 4,
                    child: Stack(children: [
                      Container(
                        color: primaryBlue,
                      ),
                      SafeArea(
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 5.0),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Evaluation",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.acme(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                        color: white,
                                      ))),
                              Expanded(
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                    ClipOval(
                                        child: Center(
                                            child: Container(
                                                alignment: Alignment.center,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.5,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.5,
                                                color: white,
                                                child:
                                                    Text('${model.finalScore}',
                                                        style: GoogleFonts.acme(
                                                          fontSize: 80.0,
                                                          color: black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ))))),
                                  ]))
                            ])),
                      ),
                    ])),
                Expanded(
                  flex: 5,
                  child: Container(
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          )),
                      child: ListView(
                        children: [

                              Card(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadowColor: grey,
        elevation: 5.0,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 7.0),
              child: Text('Cognitive Skill',
                  style: GoogleFonts.signika(
                      fontSize: 35.0,
                      color: primaryBlue,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 15.0),
              child: Text('Memory Power, Thinking Ability, Decision Making',
                  style: GoogleFonts.signika(
                    fontSize: 18.0,
                    color: primaryBlue,
                  )),
            ),
          ),
          Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.5,
              color: white,
              child: Text('${model.finalScore}',
                  style: GoogleFonts.acme(
                    fontSize: 80.0,
                    color: black,
                    fontWeight: FontWeight.bold,
                  )))
        ])),
        Card(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadowColor: grey,
        elevation: 5.0,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 7.0),
              child: Text('Mood',
                  style: GoogleFonts.signika(
                      fontSize: 35.0,
                      color: primaryBlue,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 15.0),
              child: Text('May not indicate the current mood or emotional state',
                  style: GoogleFonts.signika(
                    fontSize: 18.0,
                    color: primaryBlue,
                  )),
            ),
          ),
          Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.5,
              color: white,
              child: Text('${model.finalScore}',
                  style: GoogleFonts.acme(
                    fontSize: 80.0,
                    color: black,
                    fontWeight: FontWeight.bold,
                  )))
        ]))
                        ],
                      )),
                ),
              ],
            )
          ]);
        })));
  }
  
}
