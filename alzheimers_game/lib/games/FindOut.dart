import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class FindOutWhat extends StatefulWidget {
  @override
  _FindOutWhatState createState() => _FindOutWhatState();
}

class _FindOutWhatState extends State<FindOutWhat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body : Column(
          children: [
            Container(
              height: MediaQuery. of(context). size. height/2,
              width:  MediaQuery. of(context). size. height/2            ,
              child: Image.asset("assets/images/Watch.png"),
            ),
            Row(
              children: [
                RaisedButton(
                  onPressed: (){},),
                RaisedButton(
                  onPressed: (){},),

              ],
            )
          ],
        )
    );
  }
}

void main() {
  MaterialApp(
    home: FindOutWhat(),
  );
}