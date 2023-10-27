import 'package:flutter/material.dart';
class ThirdScreen extends StatelessWidget{
  const ThirdScreen({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('ThirdScreen'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/');
              },
              child: const Text('FirstScreen'),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: const Text('Go back to the second'),
            ),
          ]),
      ),
    );
  }
}