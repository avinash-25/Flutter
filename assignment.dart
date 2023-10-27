import 'package:flutter/material.dart';

void main() => runApp(assignment());

class assignment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("NRR Application"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'My Name is Prachi Sharma',
              ),
              Text(
                'My Roll No is 049',
              ),
              Text(
                'I am in #rd Semester',
              ),
              Text(
                'I am in Master of Computer application',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
