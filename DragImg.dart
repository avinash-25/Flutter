import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MCA 3rd Sem - Draggable Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _targetUrl = '';
  int img = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Draggable Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Draggable<String>(
                data: "Images/$img.png",
                child: Container(
                  width: 300,
                  height: 200,
                  alignment: Alignment.center,
                  color: Colors.purple,
                  child: Image.asset(
                    'Images/$img.png', // Make sure your images exist at this path
                    fit: BoxFit.cover,
                  ),
                ),
                feedback: Opacity(
                  opacity: 0.4,
                  child: Container(
                    color: Colors.purple,
                    width: 300,
                    height: 200,
                    alignment: Alignment.center,
                    child: Image.asset(
                      'Images/$img.png', // Make sure your images exist at this path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50,),

              DragTarget<String>(
                onAccept: (value){
                  setState(() {
                    _targetUrl = value;
                    if(img<7)
                      img+= 1;
                    else
                      img=1;
                  });
                },
                builder: (_,candidateData,rejectedData){
                  return Container(
                    width: 300,
                      height: 200,
                    color: Colors.amber,
                    alignment: Alignment.center,
                    child: _targetUrl != null?Image.asset(_targetUrl,fit: BoxFit.cover,)
                    :Container(),
                  );
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}
