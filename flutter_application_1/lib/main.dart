import 'package:flutter/material.dart';
import 'package:flutter_application_1/item.dart';
import 'package:flutter_application_1/itemWidget.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'App',
    home: myApp(),
  ));
}

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  final dummyList = List.generate(20, (index) => ItemModel.item[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: ItemModel.item.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: dummyList[index]);
          }),
    );
  }
}
