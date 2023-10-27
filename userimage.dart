import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Name();
  }
}

class Name extends StatefulWidget {
  const Name({Key? key});

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  final imageController = TextEditingController();
  String textImage = "No value entered";

  void _setImage() {
    setState(() {
      textImage = imageController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ImageExampleGet"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: const InputDecoration(labelText: 'Get Image'),
              controller: imageController,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
            onPressed: _setImage,
            child: const Text('Set Image'),
          ),
          Text(textImage),
          Image.network(
            textImage,
            height: 200,
            width: 200,
          ),
          Image.network(
            'https://www.freecodecamp.org/news/content/images/size/w2000/2023/08/merncrash.png',
            height: 400,
            width: 400,
          ),
        ],
      ),
    );
  }
}
