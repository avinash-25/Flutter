import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      title: 'Animation Demo',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              AnimatedOpacityWidget()
            ],
          ),
        ),
      ),
    )
  );
}

class AnimatedOpacityWidget extends StatefulWidget{

  @override

  _AnimatedOpacityWidgetState createState() => _AnimatedOpacityWidgetState();

}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget>{
  double _opacity = 1.0;
  void _animatedOpacity(){
    setState(() {
      _opacity = _opacity == 1.0 ? 0.2 : 1.0;
    });
  }

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        AnimatedOpacity(
          duration: Duration(milliseconds: 500),
          opacity: _opacity,
          child: Container(
            color: Colors.purpleAccent,
            height: 100.0,
            width: 100.0,
            child: ElevatedButton(
              child: Text('Tap'),
              onPressed: (){
                _animatedOpacity();
              },
            ),
          ),
        )
      ],
    );
  }
}
