import 'package:alzheimers_game/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:alzheimers_game/shared/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class ThankYou extends StatefulWidget {
  @override
  _ThankYouState createState() => _ThankYouState();
}

class _ThankYouState extends State<ThankYou> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
        body: Center(
            child: Container(
                color: white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("🎉", style: TextStyle(fontSize: 50)),
                    Text("Thank you for taking this test!",
                        style: GoogleFonts.acme(
                          fontSize: 32.0,
                          fontWeight: FontWeight.w500,
                          color: primaryTeal,
                        )),
                    SizedBox(height: 70.0),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        elevation: 4.0,
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              alignment: Alignment.center,
                              height: 50.0,
                              width: width,
                              child: Text("End Test",
                                  style: GoogleFonts.signika(
                                      color: primaryTeal,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0)),
                            )),
                        color: white.withOpacity(.8),
                      ),
                    ),
                  ],
                ))));
  }
}
