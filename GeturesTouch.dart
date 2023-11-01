import 'package:flutter/material.dart';

main()=>runApp(ExGesturesApp());

class ExGesturesApp extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return MaterialApp(
      home: Material(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(200))
        ),
        child: InkWell(
          onTap: () {},
          child: const Icon(Icons.fingerprint,
            size: 100,
          ),
          borderRadius: BorderRadius.circular(100),
          highlightColor: Colors.brown.withOpacity(0.2),
          splashColor: Colors.purple.withOpacity(0.8),
        ),
      ),
    );
  }
}