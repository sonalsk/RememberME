import 'package:alzheimers_game/games/appname.dart';
import 'package:alzheimers_game/scoped_models/model.dart';
import 'package:flutter/material.dart';
import 'package:alzheimers_game/shared/constants.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scoped_model/scoped_model.dart';

class DateCheck extends StatefulWidget {
  @override
  _DateCheckState createState() => _DateCheckState();
}

class _DateCheckState extends State<DateCheck> {
  int dateCheck = 0;
  String _date = 'Not picked';

  @override
  void initState() {
    super.initState;
  }

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
        body: Column(children: [
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              alignment: Alignment.center,
              color: primaryTeal,
              child: Center(
                child: Text("What is today's date?", style: primaryFont),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(75),
                      topRight: Radius.circular(75))),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    elevation: 4.0,
                    onPressed: () {
                      DatePicker.showDatePicker(context,
                          theme: DatePickerTheme(
                            containerHeight: 210.0,
                          ),
                          showTitleActions: true,
                          minTime: DateTime(2000, 1, 1),
                          maxTime: DateTime(2032, 12, 31), onConfirm: (date) {
                        setState(() {
                          _date = '${date.year} - ${date.month} - ${date.day}';
                          if (date.year == DateTime.now().year) {
                            dateCheck += 1;
                          }
                          if (date.month == DateTime.now().month) {
                            dateCheck += 1;
                          }
                          if (date.day == DateTime.now().day) {
                            dateCheck += 1;
                          }
                        });
                      }, onChanged: (date) {
                        setState(() {
                          dateCheck = 0;
                        });
                      },
                          currentTime: DateTime.utc(2010, 1, 1),
                          locale: LocaleType.en);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.date_range,
                                        size: 22.0,
                                        color: Colors.teal,
                                      ),
                                      SizedBox(width: 5.0),
                                      Text(
                                        " $_date",
                                        style: GoogleFonts.signika(
                                            color: Colors.teal,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22.0),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Text(
                              "  Change",
                              style: TextStyle(
                                  color: Colors.teal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    color: white.withOpacity(.8),
                  ),
                ),
              ),
            ),
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          backgroundColor: primaryTeal,
          child: Icon(Icons.arrow_forward_ios, color: white),
          onPressed: () {
            setState(() => model.addScore(dateCheck));
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => AppNameCheck()));
          },
        ),
      );
    });
  }
}
