import 'package:flutter/material.dart';
import 'heroBox.dart';
class HeroClass extends StatelessWidget{
  const HeroClass({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('hero example')),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 100.0),
          ListTile(
            leading: const Hero(
                tag: 'hero-rectangle',
                child: BoxWidget(size: Size(50.0,50.0)),
            ),
            onTap: () => _gotoImgDetailsPage(context),
            title: const Text('Tap on the icon'),
          ),
        ],
      ),
    );
  }
  void _gotoImgDetailsPage(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder:
    (BuildContext) =>
        Scaffold(
          appBar: AppBar(title: const Text('Image zoom page'),),
          body: const Center(
            child: Hero(
                tag: 'hero-rectangle',
                child: BoxWidget(size: Size(500.0, 350.0))
            ),
          ),
        )
    ));
  }
  }