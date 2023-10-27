import 'package:flutter/material.dart';

// void main() {
//   runApp(Pictures());
// }

class Pictures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:
          'Flutter Demo', // Use single quotes (') instead of smart quotes (‘’)
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              'Image Demo'), // Use single quotes (') instead of smart quotes (‘’)
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/image1.jpg',
                  width: 300,
                  height: 300), // Corrected the asset path and curly braces
              Image.asset('images/image2.jpg',
                  width: 300,
                  height: 300), // Corrected the asset path and curly braces
            ],
          ),
        ),
      ),
    );
  }
}
