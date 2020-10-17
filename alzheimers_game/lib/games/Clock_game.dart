import 'package:alzheimers_game/games/validLetters1.dart';
import 'package:alzheimers_game/scoped_models/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alzheimers_game/shared/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scoped_model/scoped_model.dart';

class Time extends StatelessWidget {
  @override
  String time;
  Container time_holder;
  Time(this.time) {
    time_holder = new Container(
      decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(10.0),
            topRight: const Radius.circular(10.0),
            bottomLeft: const Radius.circular(10.0),
            bottomRight: const Radius.circular(10.0),
          )),
      padding: EdgeInsets.all(10),
      child: Text(
        time,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
  Widget build(BuildContext context) {
    return Draggable(
      child: time_holder,
      feedback: time_holder,
      data: time,
    );
  }
}

int clock_score = 0;

class TimeDragTarget extends StatefulWidget {
  @override
  String Time;
  TimeDragTarget({this.Time});
  _TimeDragTargetState createState() => _TimeDragTargetState(Time: Time);
}

class _TimeDragTargetState extends State<TimeDragTarget> {
  Container TimeHolder = new Container(
    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
    height: 25,
    width: 25,
  );
  String Time;
  _TimeDragTargetState({this.Time});
  @override
  Widget build(BuildContext context) {
    return DragTarget(
      builder: (context, List<String> data, rejectedData) => TimeHolder,
      onWillAccept: (data) {
        return true;
      },
      onAccept: (data) {
        setState(() {
          if (Time == data) {
            clock_score++;
          }
          if (data == 10.toString() ||
              data == 11.toString() ||
              data == 12.toString()) {
            TimeHolder = Container(
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.green),
              padding: EdgeInsets.only(left: 0),
              height: 25,
              width: 25,
              child: Text(
                data,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          } else {
            TimeHolder = Container(
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.green),
              padding: EdgeInsets.only(left: 5),
              height: 25,
              width: 25,
              child: Text(
                data,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          }
        });
      },
    );
  }
}

// ignore: camel_case_types
class Time_grid extends StatefulWidget {
  @override
  _Time_gridState createState() => _Time_gridState();
}

class _Time_gridState extends State<Time_grid> {
  @override
  List<Time> TimeList = new List();
  buildList() async {
    for (int i = 1; i < 13; i++) {
      TimeList.add(Time(i.toString()));
    }
  }

  void initState() {
    buildList();
    super.initState();
  }

  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 6,
      children: TimeList,
    );
  }
}

class Clock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.35,
      width: width * 0.7,
      margin: EdgeInsets.only(top: 70),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/clock.png"), fit: BoxFit.fill),
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(10.0),
            topRight: const Radius.circular(10.0),
            bottomLeft: const Radius.circular(10.0),
            bottomRight: const Radius.circular(10.0),
          )),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(98, 80, 0, 0),
                child: TimeDragTarget(
                  Time: 11.toString(),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 58, 0, 0),
                child: TimeDragTarget(Time: 12.toString()),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(12, 75, 0, 0),
                child: TimeDragTarget(Time: 1.toString()),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(70, 7, 0, 0),
                child: TimeDragTarget(Time: 10.toString()),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
                child: TimeDragTarget(Time: 2.toString()),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(60, 15, 0, 0),
                child: TimeDragTarget(Time: 9.toString()),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(122, 10, 0, 0),
                child: TimeDragTarget(Time: 3.toString()),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(70, 15, 0, 0),
                child: TimeDragTarget(Time: 8.toString()),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(103, 9, 0, 0),
                child: TimeDragTarget(Time: 4.toString()),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(100, 0, 5, 12),
                child: TimeDragTarget(Time: 7.toString()),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 2, 5, 0),
                child: TimeDragTarget(Time: 6.toString()),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(8, 5, 15, 25),
                child: TimeDragTarget(Time: 5.toString()),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ClockGame extends StatefulWidget {
  @override
  _ClockGameState createState() => _ClockGameState();
}

class ScorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryTeal,
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/ClockBG.png"),
                  fit: BoxFit.cover)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(10.0),
                            topRight: const Radius.circular(10.0),
                            bottomLeft: const Radius.circular(10.0),
                            bottomRight: const Radius.circular(10.0),
                          ),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Center(
                          child:
                              Text("🎉 Your Score : " + clock_score.toString(),
                                  style: GoogleFonts.signika(
                                    fontSize: 30,
                                  )),
                        ),
                      ))
                ],
              )
            ],
          )),
    );
  }
}

class _ClockGameState extends State<ClockGame> {
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
        body: Container(
          padding: EdgeInsets.only(bottom: 30.0),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/ClockBG.png"),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.only(
                bottom: 30.0, left: 10.0, right: 10.0, top: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Place the numbers in the clock at thier correct positions',
                  style: GoogleFonts.acme(
                    fontSize: 40.0,
                    color: white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Clock(),
                SizedBox(
                  height: 30.0,
                ),
                Expanded(
                  flex: 4,
                  child: Time_grid(),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: white,
          child: Icon(Icons.arrow_forward_ios, color: primaryTeal),
          onPressed: () {
            setState(() => model.addScore(clock_score));
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ValidLetterCheck1()));
          },
        ),
      );
    });
  }
}
