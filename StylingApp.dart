import 'package:flutter/material.dart';

void main() => runApp(StylingApp());

class StylingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("PS Application"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'My Name is: Prachi Sharma',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(225, 10, 170, 1),
                  fontSize: 30,
                  fontFamily: 'Times New Roman',
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 20, 5, 20),
                child: Text(
                  'My Roll No is: 049',
                  style: TextStyle(
                    fontSize: 40,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 3
                      ..color = Colors.blue[700]!,
                  ),
                ),
              ),
              Text(
                'My Semester is: 3rd Sem',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                  backgroundColor: Colors.yellow,
                  shadows: [
                    Shadow(
                      color: Colors.blueAccent,
                      offset: Offset(2, 1),
                      blurRadius: 10,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(17, 10, 17, 10),
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  color: Colors.tealAccent,
                  width: 300.0,
                  height: 225.0,
                  child: Text(
                    'My Subject is: Computer Science Engineering',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      height: 2,
                      color: Colors.redAccent,
                      backgroundColor: Colors.black87,
                      letterSpacing: 7,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.double,
                      decorationColor: Colors.brown,
                      decorationThickness: 1.5,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
