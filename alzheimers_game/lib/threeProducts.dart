import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class threeProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    double width = queryData.size.width;
    double height = queryData.size.height;

    return Scaffold(
      body: Container(

          decoration: BoxDecoration(
              color: Colors.lightBlue,
          ),

          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                margin: EdgeInsets.only(bottom: width * 0.15),
                child: Text(
                  "TAKE A LOOK AT THESE IMAGES",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 46,
                    color: Colors.amber,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              Container(
                height: height * 0.15,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[

                    Container(
                      width: width * 0.25,
                      color: Colors.deepPurple,
                    ),

                    Container(
                      width: width * 0.25,
                      color: Colors.purple,
                    ),

                    Container(
                      width: width * 0.25,
                      color: Colors.deepOrange,
                    ),

                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: width * 0.15, bottom: 0),
                child: RaisedButton(
                  color: Colors.orange[200],
                  child: Text(
                    "GO",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange
                    ),
                  ),
                  onPressed: (){
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Opposite(
                        width: width,
                        height: height,
                      );
                    })
                    );
                  },
                ),
              ),

            ],
          )

      ),
    );
  }
}

class Opposite extends StatefulWidget {
  final double width;
  final double height;
  Opposite({Key key, @required this.width, this.height}) : super(key: key);

  @override
  _OppositeState createState() => _OppositeState(
    width: width,
    height: height,
  );
}

class _OppositeState extends State<Opposite> {

  double width;
  double height;
  _OppositeState({this.width, this.height});

  List<Container> oppList = new List();
  int score = 0;

  var inputs = [
    {"Image1" : "Images/pic.png", "Image2" : "Images/pic.png", "Image3" : "Images/tgate.png"},
    {"Image1" : "Images/pic.png", "Image2" : "Images/pic.png", "Image3" : "Images/pic.png"},
    {"Image1" : "Images/pic.png", "Image2" : "Images/tgate.png", "Image3" : "Images/pic.png"},
    {"Image1" : "Images/pic.png", "Image2" : "Images/pic.png", "Image3" : "Images/pic.png"},
    {"Image1" : "Images/tgate.png", "Image2" : "Images/pic.png", "Image3" : "Images/pic.png"},
  ];

  buildList() async{
    for(int i = 0; i < inputs.length; i++){
      final element = inputs[i];

      oppList.add(

        Container(
          height: height * 0.12,
          margin: EdgeInsets.only(top: width * 0.08),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,


            children: <Widget>[

              InkWell(
                child: Container(
                  width: width * 0.25,
                  margin: EdgeInsets.only(bottom: width * 0.01),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(element["Image1"]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                onTap: () {
                  if (i == 4) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(
                            'YOU GOT IT!',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        );
                      },
                    );
                  }
                  else {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(
                            'WRONG! TRY AGAIN',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        );
                      },
                    );
                  }
                }
              ),

              InkWell(
                child: Container(
                  width: width * 0.25,
                  margin: EdgeInsets.only(bottom: width * 0.01),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(element["Image2"]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                onTap: () {
                  if (i == 2) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(
                            'YOU GOT IT!',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        );
                      },
                    );
                  }
                  else {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(
                            'WRONG! TRY AGAIN',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),

              InkWell(
                child: Container(
                  width: width * 0.25,
                  margin: EdgeInsets.only(bottom: width * 0.01),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(element["Image3"]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                onTap: () {
                  if (i == 0) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(
                            'YOU GOT IT!',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        );
                      },
                    );
                  }
                  else {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(
                            'WRONG! TRY AGAIN',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        );
                      },
                    );
                  }
                },

              ),

            ],
          ),
        ),
      );
    }
  }

  void initState(){
    buildList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    double height = queryData.size.height;
    double width = queryData.size.width;

    return Scaffold(
      resizeToAvoidBottomPadding: false,

      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        decoration: BoxDecoration(
          color: Colors.lightBlue,
        ),

        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[

              Container(

                child: Text(
                  "FIND THE IMAGES",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.amber,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              Container(
                height: height * 0.8,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.only(top: 0, bottom: 0),
                  children: oppList,
                ),
              ),

            ],
          ),
        ),
    );
  }
}
