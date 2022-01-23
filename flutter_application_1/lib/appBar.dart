import 'package:flutter/material.dart';

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
  @override
  Widget buildText(String text) {
    return Center(
        child: Text(
      text,
      style: TextStyle(fontSize: 30),
    ));
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          title: Text('AppBar'),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ],
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
              child: Text('This is Home Page'),
            ),
            Tab(
              icon: Icon(Icons.person),
              child: Text('This is Profile Page'),
            ),
            Tab(
              icon: Icon(Icons.add),
              child: Text('This is Add Page'),
            ),
          ]),
        ),
        body: TabBarView(children: [
          buildText('this is the page of Home'),
          buildText(
              'it is your friends page.you can see your friends activities'),
          buildText('you can add your friends here'),
        ]),
      ),
    );
  }
}
