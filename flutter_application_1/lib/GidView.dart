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
  final number = List.generate(20, (index) => 'Item: $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GidView.builder'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: number.length,
            itemBuilder: (context, index) {
              final items = number[index];
              return GridTile(
                header: Icon(Icons.person),
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.amber,
                  child: Text(
                    items,
                    style: TextStyle(fontSize: 20),
                  ),
                  alignment: Alignment.center,
                ),
                footer: Text(
                  'Footer',
                  textAlign: TextAlign.center,
                ),
              );
            }),
      ),
    );
  }
}
