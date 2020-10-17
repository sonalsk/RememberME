
import 'package:alzheimers_game/screens/services/authservice.dart';
import 'package:alzheimers_game/screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:alzheimers_game/evaluation/evaluation.dart';
import 'package:alzheimers_game/scoped_models/model.dart';
import 'package:alzheimers_game/screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(new RememberME());
}

class RememberME extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MainModel _model = MainModel();
    
    return ScopedModel<MainModel>(
      model: _model,
      child: MaterialApp(
      title: 'RememberME',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,

      home: AuthService().handleAuth(),
    ),
    );

  }
}