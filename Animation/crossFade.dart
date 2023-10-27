import 'package:flutter/material.dart';

class AnimCrossFadeWdt extends StatefulWidget{
  @override
  _AnimCrossFadeWdtState createState() => _AnimCrossFadeWdtState();
}

class _AnimCrossFadeWdtState extends State<AnimCrossFadeWdt>{
  bool _crossFadeStateToogle =true;
  void _crossFade(){
    setState(() {
      _crossFadeStateToogle = _crossFadeStateToogle ?false : true;
    });
  }

  @override
  Widget build(BuildContext context){
    return Row(
      children: <Widget>[
        AnimatedCrossFade(
          firstCurve: Curves.linear,
          secondCurve: Curves.easeInOut,
          duration: Duration(milliseconds: 1500),
          crossFadeState: _crossFadeStateToogle ? CrossFadeState.showFirst:CrossFadeState.showSecond,
          firstChild: Container(color: Colors.amber,
            height: 100.0,
            width: 100.0,),
          secondChild: Container(color: Colors.redAccent,
            height: 200.0 ,
            width: 300.0,
          ),
        ),
        Positioned.fill(
            child:ElevatedButton(child: Text('tap to\n grow'),

                onPressed: (){
                  _crossFade();
                }))
      ],
    );
  }
}