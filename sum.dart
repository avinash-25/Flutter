import 'package:flutter/material.dart';

void main() {
  runApp(Sum());
}

class Sum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MiniCale(),
    );
  }
}

class MiniCale extends StatefulWidget {
  @override
  _MiniCaleState createState() => _MiniCaleState();
}

class _MiniCaleState extends State<MiniCale> {
  int firstNum = 0;
  int secondNum = 0;
  int resultNum = 0;
  final fnController = TextEditingController();
  final snController = TextEditingController();
  final resController = TextEditingController();

  void _calculateAdd() {
    setState(() {
      firstNum = int.parse(fnController.text);
      secondNum = int.parse(snController.text);
      resultNum = firstNum + secondNum;
      resController.text = resultNum.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("MiniCale"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              controller: fnController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'First Number',
                hintText: 'Enter an integer value',
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              controller: snController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Second Number',
                hintText: 'Enter an integer value',
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _calculateAdd();
            },
            child: const Text(
              "Add Numbers",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              controller: resController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Result',
                hintText: 'Displaying Result of Operation',
              ),
              enabled: false,
            ),
          ),
        ],
      ),
    );
  }
}

// class Temp extends StatefulWidget {
//   @override
//   MyVals createState() => MyVals();
// }


// class MyVals extends State<Temp> {
//   int a = 0;
//   int b = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//       child: const Text("hello world"),
//     ));
//   }
// }
