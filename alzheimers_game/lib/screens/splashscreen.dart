import 'package:alzheimers_game/animations/fadeanimation.dart';
import 'package:alzheimers_game/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:alzheimers_game/shared/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  AnimationController _scaleController;
  AnimationController _scale2Controller;
  AnimationController _widthController;
  AnimationController _positionController;

  Animation<double> _scaleAnimation;
  Animation<double> _scale2Animation;
  Animation<double> _widthAnimation;
  Animation<double> _positionAnimation;

  bool hideIcon = false;

  @override
  void initState() {
    super.initState();

    _scaleController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));

    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 0.8).animate(_scaleController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _widthController.forward();
            }
          });

    _widthController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));

    _widthAnimation =
        Tween<double>(begin: 80.0, end: 300.0).animate(_widthController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _positionController.forward();
            }
          });

    _positionController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));

    _positionAnimation =
        Tween<double>(begin: 0.0, end: 215.0).animate(_positionController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              setState(() {
                hideIcon = true;
              });
              _scale2Controller.forward();
            }
          });

    _scale2Controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));

    _scale2Animation = Tween<double>(begin: 1.0, end: 34.0).animate(
        _scale2Controller)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Navigator.pop(context);
          Navigator.push(context,
              PageTransition(type: PageTransitionType.fade, child: Home()));
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: primaryTeal,
        body: Container(
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  top: -60,
                  left: 0,
                  child: FadeAnimation(
                      1,
                      Container(
                        width: width,
                        height: 400.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image:
                              AssetImage('assets/backgrounds/splashcolor.png'),
                          fit: BoxFit.cover,
                        )),
                      )),
                ),
                Positioned(
                    top: -120,
                    left: 0,
                    child: FadeAnimation(
                      1.3,
                      Container(
                        width: width,
                        height: 400.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image:
                              AssetImage('assets/backgrounds/splashcolor.png'),
                          fit: BoxFit.cover,
                        )),
                      ),
                    )),
                Positioned(
                    top: -180,
                    left: 0,
                    child: FadeAnimation(
                      1.5,
                      Container(
                        width: width,
                        height: 400.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image:
                              AssetImage('assets/backgrounds/splashcolor.png'),
                          fit: BoxFit.cover,
                        )),
                      ),
                    )),
                Container(
                    padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeAnimation(
                          1,
                          Text("Welcome",
                              style: GoogleFonts.acme(
                                fontSize: 60.0,
                                color: white,
                                fontWeight: FontWeight.w500,
                              )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        FadeAnimation(
                          1.3,
                          Text("Let's test your memory and thinking skills...",
                              style: GoogleFonts.acme(
                                fontSize: 26.0,
                                color: white.withOpacity(.8),
                                height: 1.4,
                                //fontWeight: FontWeight.bold,
                              )),
                        ),
                        SizedBox(
                          height: 200,
                        ),
                        FadeAnimation(
                            1.6,
                            AnimatedBuilder(
                              animation: _scaleController,
                              builder: (context, child) => Transform.scale(
                                  scale: _scaleAnimation.value,
                                  child: Center(
                                    child: AnimatedBuilder(
                                      animation: _widthController,
                                      builder: (context, child) => Container(
                                        width: _widthAnimation.value,
                                        height: 80,
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                            color: white.withOpacity(.4)),
                                        child: InkWell(
                                          onTap: () {
                                            _scaleController.forward();
                                          },
                                          child: Stack(children: [
                                            AnimatedBuilder(
                                              animation: _positionController,
                                              builder: (context, child) =>
                                                  Positioned(
                                                left: _positionAnimation.value,
                                                child: AnimatedBuilder(
                                                  animation: _scale2Controller,
                                                  builder: (context, chlid) =>
                                                      Transform.scale(
                                                          scale:
                                                              _scale2Animation
                                                                  .value,
                                                          child: Container(
                                                            width: 60,
                                                            height: 60,
                                                            decoration:
                                                                BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                    color:
                                                                        white),
                                                            child: hideIcon ==
                                                                    false
                                                                ? Icon(
                                                                    Icons
                                                                        .arrow_forward,
                                                                    color:
                                                                        primaryTeal)
                                                                : Container(),
                                                          )),
                                                ),
                                              ),
                                            ),
                                          ]),
                                        ),
                                      ),
                                    ),
                                  )),
                            )),
                        SizedBox(
                          height: 60,
                        ),
                      ],
                    )),
              ],
            )));
  }
}
