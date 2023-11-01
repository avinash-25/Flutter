import 'package:flutter/material.dart';

main() =>
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
  home: ExGesturesApp(),
));

class ExGesturesApp extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {_showDialog(context);
            print('Tapped on the screen');},
          child: Text('Tap on me for message'),
        ),
      ),
    );
  }
}

void _showDialog(BuildContext context){
  showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(
      title: new Text('Message'),
      content: new Text('Message print by Avinash'),
      actions: [
        new ElevatedButton(
          child: new Text('Close'),
          onPressed: (){
            Navigator.of(context).pop();
          },
        )
      ],
    );
  });
}
