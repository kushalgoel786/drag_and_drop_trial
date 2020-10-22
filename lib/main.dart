import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Draggable'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Draggable()
              child: Icon(Icons.share, size: 80.0),
              feedback: Container(color: Colors.grey, height: 80.0, width: 80.0),
              childWhenDragging: Icon(Icons.share, size: 80.0, color: Colors.grey),
            ),
            DragTarget(
              builder: (context, candidates, rejects) {
                return Container(color: Colors.blue);
              },
            )
          ],
        ),
      ),
    );
  }
}
