import 'dart:math';
import 'package:unn/ListViewEx/HeaderWidget.dart';
import 'package:unn/ListViewEx/RowWidget.dart';
import 'package:unn/ListViewEx/RowWithCardWidget.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mca 3rd - Card Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('MCA 3rd sem'),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (BuildContext context,int index){
              if(index == 0){
                return HeaderWidget(index: index);
              }else if(index >= 1 && index <=3){
                return RowWithCardWidget(index: index);
              }else{
                return RowWidget(index: index);
              }
            },
        ),
      )
    );
  }
}