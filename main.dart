import 'package:flutter/material.dart';
import 'package:unn/nmdFirstScreen.dart';
import 'package:unn/nmdSecondScreen.dart';
import 'package:unn/nmdThirdScreen.dart';
import 'package:unn/BottomNamvigation/bomMain.dart';
import 'package:unn/heroEx/heroClass.dart';
import 'package:unn/Animation/textStyle.dart';
import 'package:unn/Animation/crossFade.dart';

void main() {
  runApp(
    MaterialApp(
      // home: HeroClass(),
      // home: bomMain(),
      // home: MyApp(),
      home: AnimCrossFadeWdt(),
    ),
  );
}
