import 'package:flutter/material.dart';
import 'package:alzheimers_game/shared/constants.dart';
import 'package:google_fonts/google_fonts.dart';

Widget _buildGameTile(String imgPath, String gameName, String category) {
    return Padding(
        padding: EdgeInsets.only(left: 30.0, right: 10.0, top: 30.0),
        child: InkWell(
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => GameScreen(
              //         heroTag: imgPath,
              //         gameName: gameName,
              //         gameCategory: category)));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    child: Row(children: [
                  Hero(
                      tag: imgPath,
                      child: Image(
                        image: AssetImage(imgPath),
                        fit: BoxFit.cover,
                        height: 100.0,
                        width: 100.0,
                      )),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(gameName,
                          style: GoogleFonts.signika(
                              fontSize: 22.0, fontWeight: FontWeight.bold)),
                      SizedBox(width: 5.0),
                      Text(category,
                          style: GoogleFonts.signika(
                            fontSize: 15.0,
                            color: grey,
                          )),
                    ],
                  ),
                ])),
                IconButton(
                    icon: Icon(Icons.play_arrow),
                    color: black,
                    onPressed: () {}),
              ],
            )));
  }