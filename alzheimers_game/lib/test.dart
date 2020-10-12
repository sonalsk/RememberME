import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class findProducts extends StatelessWidget {
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

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                margin: EdgeInsets.only(bottom: width * 0.15),
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
                height: height * 0.15,

                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[

                        InkWell(
                          child: Container(
                            width: width * 0.25,
                            color: Colors.deepPurple,
                          ),
                          onTap: () {
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
                          },
                        ),

                        InkWell(
                          child: Container(
                            width: width * 0.25,
                            color: Colors.deepPurple,
                          ),
                          onTap: () {
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
                          },
                        ),

                        InkWell(
                          child: Container(
                            width: width * 0.25,
                            color: Colors.deepPurple,
                          ),
                          onTap: () {
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
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: width * 0.15),
                child: RaisedButton(
                  color: Colors.orange[200],
                  child: Text(
                    "GO",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange
                    ),
                  ),
                  onPressed: () {

                  },
                ),
              ),

            ],
          )

      ),
    );
  }
}