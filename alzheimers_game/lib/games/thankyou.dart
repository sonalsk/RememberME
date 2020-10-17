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
    return Scaffold(
        backgroundColor: primaryTeal,
        body: Center(
            child: Container(
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(30)
              ),
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.5,
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("🎉", style: TextStyle(fontSize: 80)),
                    SizedBox(height: 30.0),
                    Center(
                        child: Container(
                          alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Text("You have successfully completed the test!",
                          style: GoogleFonts.acme(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w500,
                            color: primaryTeal,
                          )),
                    )),
                    SizedBox(height: 70.0),
                    RaisedButton(
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
                              height: 30.0,
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Text("End Test",
                                  style: GoogleFonts.signika(
                                      color: black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25.0)),
                            )),
                        color: white.withOpacity(.5),
                      ),
                    
                  ],
                ))));
  }
}
