import 'package:flutter/material.dart';
import 'heroClass.dart';
void main() => runApp(const HeroApp());
class HeroApp extends StatelessWidget{
  const HeroApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: HeroClass(),
    );
  }
}