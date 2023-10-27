import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SecondScreen"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children:[
        ElevatedButton(
          onPressed: () {
            // Navigate to the third screen when the button is pressed.
            Navigator.pushNamed(context, '/third');
          },
          child: const Text('Go to Third Screen'), // Added a label for the button
        ),
            ElevatedButton(
              onPressed: (){
              Navigator.pushNamed(context, '/first');
            },
              child: const Text('Go to the first screen'),
            )
        ]),
      ),
    );
  }
}
