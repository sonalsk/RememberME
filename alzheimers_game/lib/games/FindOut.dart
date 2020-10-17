import 'package:flutter/material.dart';

class FindOutWhatObject1 extends StatefulWidget {
  @override
  _FindOutWhatObject1State createState() => _FindOutWhatObject1State();
}

class _FindOutWhatObject1State extends State<FindOutWhatObject1> {
  Color color1 = Colors.cyan;
  Color color2 = Colors.cyan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body : Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: (MediaQuery.of(context). size. height) /2,
              width:  (MediaQuery.of(context). size. width)* 4/5,
              child: Image.asset("assets/images/Watch.png",
                fit: BoxFit.fill,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                  color: color1,
                  child: Container(
                    height: (MediaQuery.of(context). size. height)/5,
                    width: (MediaQuery.of(context). size. width)/5,
                    child: Center(
                      child: Text("WATCH",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                  ),
                  onPressed: (){
                    setState(() {
                      color1 = Colors.cyanAccent;
                    });
                  },),
                RaisedButton(
                  color: color2,
                  child: Container(
                      height: (MediaQuery.of(context). size. height)/5,
                      width: (MediaQuery.of(context). size. width)/5,
                      child: Center(
                        child: Text("BAT",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),),
                      )
                  ),
                  onPressed: (){
                    setState(() {
                      color2 = Colors.cyanAccent;
                    });
                  },),

              ],
            )
          ],
        )
    );
  }
}

class FindOutWhatObject extends StatefulWidget {
  @override
  _FindOutWhatObjectState createState() => _FindOutWhatObjectState();
}

class _FindOutWhatObjectState extends State<FindOutWhatObject> {
  Color color1 = Colors.cyan;
  Color color2 = Colors.cyan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body : Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: (MediaQuery.of(context). size. height) /2,
              width:  (MediaQuery.of(context). size. width)* 4/5,
              child: Image.asset("assets/images/pencil.png",
                fit: BoxFit.fill,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                  color: color1,
                  child: Container(
                    height: (MediaQuery.of(context). size. height)/5,
                    width: (MediaQuery.of(context). size. width)/5,
                    child: Center(
                      child: Text("PENCIL",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                  ),
                  onPressed: (){
                    setState(() {
                      color1 = Colors.cyanAccent;
                    });
                  },),
                RaisedButton(
                  color: color2,
                  child: Container(
                      height: (MediaQuery.of(context). size. height)/5,
                      width: (MediaQuery.of(context). size. width)/5,
                      child: Center(
                        child: Text("BALL",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),),
                      )
                  ),
                  onPressed: (){
                    setState(() {
                      color2 = Colors.cyanAccent;
                    });
                  },),

              ],
            )
          ],
        )
    );
  }
}


class FindOutWhatColor extends StatefulWidget {
  @override
  _FindOutWhatColorState createState() => _FindOutWhatColorState();
}

class _FindOutWhatColorState extends State<FindOutWhatColor> {
  Color color1 = Colors.cyan;
  Color color2 = Colors.cyan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body : Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: (MediaQuery.of(context). size. height) /2,
              width:  (MediaQuery.of(context). size. width)* 4/5,
              child: Image.asset("assets/images/Yellow.png",
                fit: BoxFit.fill,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                  color: color1,
                  child: Container(
                    height: (MediaQuery.of(context). size. height)/5,
                    width: (MediaQuery.of(context). size. width)/5,
                    child: Center(
                      child: Text("VOILET",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                  ),
                  onPressed: (){
                    setState(() {
                      color1 = Colors.cyanAccent;
                    });
                  },),
                RaisedButton(
                  color: color2,
                  child: Container(
                      height: (MediaQuery.of(context). size. height)/5,
                      width: (MediaQuery.of(context). size. width)/5,
                      child: Center(
                        child: Text("Yellow".toUpperCase(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),
                      )
                  ),
                  onPressed: (){
                    setState(() {
                      color2 = Colors.cyanAccent;
                    });
                  },),

              ],
            )
          ],
        )
    );
  }
}
