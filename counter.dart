import 'package:flutter/material.dart';

void main() => runApp(Counter());

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: "Prachi",),
      home: DefaultTabController(length: 4, child: MyHomePage(title: "Prachi")),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
          ],
          flexibleSpace: SafeArea(
            child: Icon(Icons.photo_camera, size: 40.0, color: Colors.amber),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: _incrementCounter,
        //   // onPressed: _decrement,
        //   // tooltip: 'Decrement',
        //   tooltip: 'Increment',
        //   child: const Icon(Icons.add),

        floatingActionButton:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FloatingActionButton(
            onPressed: _decrement,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          SizedBox(width: 50), // Add spacing between the buttons
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),

          // This trailing comma makes auto-formatting nicer for build methods.
        ]));
  }
}
