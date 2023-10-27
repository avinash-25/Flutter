import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    const appTitle = 'Form Styling Demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding : EdgeInsets.symmetric(horizontal: 8,vertical: 16),
          child: TextField(
            maxLength: 12,
            decoration: InputDecoration(
                prefixText: "Avinash",
                suffixText: "Ranjan",
                border: OutlineInputBorder(),
                hintText: 'Enter a text'
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "enter name"
            ),
          ),
        ),
      ],
    );
  }
}