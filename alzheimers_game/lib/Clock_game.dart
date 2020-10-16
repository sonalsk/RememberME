import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Time extends StatelessWidget {
  @override
  String time;
  Container time_holder;
  Time(this.time){
    time_holder = new Container(
      decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.only(
              topLeft:  const  Radius.circular(10.0),
              topRight: const  Radius.circular(10.0),
              bottomLeft:  const  Radius.circular(10.0),
              bottomRight: const  Radius.circular(10.0),
          )
      ),
      padding: EdgeInsets.all(10),
      child: Text(
        time,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20
        ),),
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

int FINAL_SCORE = 0;

class TimeDragTarget extends StatefulWidget {
  @override
  String Time;
  TimeDragTarget({this.Time});
  _TimeDragTargetState createState() => _TimeDragTargetState(Time: Time);
}

class _TimeDragTargetState extends State<TimeDragTarget> {
  Container TimeHolder = new Container(
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.grey
    ),
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
      onAccept: (data){
        setState(() {
          if(Time == data){
            FINAL_SCORE++;
          }
          if(data == 10.toString() || data == 11.toString() || data == 12.toString()){
            TimeHolder = Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green
              ),
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
          }
          else{
            TimeHolder = Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green
              ),
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
    for(int i = 1; i <13; i++){
        TimeList.add(Time(i.toString()));
    }
  }
  void initState(){
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
    return Container(
      height: 320,
      width: 270,
      margin: EdgeInsets.only(top: 120),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("Images/clock.png"),
          fit: BoxFit.fill
        ),
          borderRadius: new BorderRadius.only(
            topLeft:  const  Radius.circular(10.0),
            topRight: const  Radius.circular(10.0),
            bottomLeft:  const  Radius.circular(10.0),
            bottomRight: const  Radius.circular(10.0),
          )
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(87, 80, 0, 0),
                child: TimeDragTarget(Time: 11.toString(),),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 50, 0, 0),
                child: TimeDragTarget(Time: 12.toString()),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(7, 75, 0, 0),
                child: TimeDragTarget(Time: 1.toString()),
              ),

            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(65, 10, 0, 0),
                child: TimeDragTarget(Time: 10.toString()),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(90, 0, 0, 0),
                child: TimeDragTarget(Time: 2.toString()),
              ),

            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(56, 11, 0, 0),
                child: TimeDragTarget(Time: 9.toString()),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(105, 0, 0, 0),
                child: TimeDragTarget(Time: 3.toString()),
              ),

            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(65, 10, 0, 0),
                child: TimeDragTarget(Time: 8.toString()),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(90, 0, 0, 0),
                child: TimeDragTarget(Time: 4.toString()),
              ),

            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(87, 5, 0, 0),
                child: TimeDragTarget(Time: 7.toString()),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: TimeDragTarget(Time: 6.toString()),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(7, 5, 0, 0),
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
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Images/ClockBG.png"),
                fit: BoxFit.fill
            )
        ),
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
                      topLeft:  const  Radius.circular(10.0),
                      topRight: const  Radius.circular(10.0),
                      bottomLeft:  const  Radius.circular(10.0),
                      bottomRight: const  Radius.circular(10.0),
                    ),
                    color: Colors.white
                  ),
                    height: 200,
                    width: 200,
                    child:  Text("Score :" +
                        FINAL_SCORE.toString())
                )
              ],
            )
          ],
        )
      ),
    );
  }
}


class _ClockGameState extends State<ClockGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/ClockBG.png"),
            fit: BoxFit.fill
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Clock(),
            Expanded(
              flex: 4,
              child: Time_grid(),
            ),
            RaisedButton(
              color: Colors.white,
              child: Text(
                "Score",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),
              onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScorePage()),
              );
            },)

          ],
        )
      ),
    );
  }
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ClockGame()
    );
  }
}

void main() {
  runApp(MyApp());
}