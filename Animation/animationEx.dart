import 'package:flutter/material.dart';
void main(){
  runApp(
      MaterialApp(
        title: 'Animation Demo',
        home: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Animation(),
              ],
            ),
          ),
        ),
      )
  );
}
class Animation extends StatefulWidget{
  @override
  _AnimationState createState()=> _AnimationState();
}
class _AnimationState extends State<Animation>
{
  double _height = 100.0;
  double _width = 100.0;
  void _increaseWidth()
  {
    setState(() {
      _width = _width>=320.0 ? 100.0 : _width +=50.0;
      _height = _height >=400.0 ? 100.0 :_height +=75.0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedContainer(duration: Duration(milliseconds: 500),
          curve: Curves.elasticOut,
          color: Colors.blueGrey,
          height: _height,
          width: _width,
          child: ElevatedButton(
            child: Text('Tap to \n Grow Width \ ${_width}'),
            onPressed: (){
              _increaseWidth();
            },
          ),
        )
      ],
    );
  }
}