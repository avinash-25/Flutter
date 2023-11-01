import 'package:flutter/material.dart';

main()=>runApp(ExGesturesApp());

class ExGesturesApp extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () {print('Tapped');},
            child: Text('Hello '),
          ),
        ),
      ),
    );
  }
}