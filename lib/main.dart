import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Главный экран'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => navigateToColorScreen(context, Colors.red),
              child: Text('Красный'),
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
            ElevatedButton(
              onPressed: () => navigateToColorScreen(context, Colors.yellow),
              child: Text('Желтый'),
              style: ElevatedButton.styleFrom(primary: Colors.yellow),
            ),
            ElevatedButton(
              onPressed: () => navigateToColorScreen(context, Colors.blue),
              child: Text('Синий'),
              style: ElevatedButton.styleFrom(primary: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }

  void navigateToColorScreen(BuildContext context, Color color) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ColorScreen(color: color)),
    );
  }
}

class ColorScreen extends StatelessWidget {
  final Color color;

  ColorScreen({required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Цветной экран'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: color,
        child: Center(
          child: Text(
            'Цветной экран',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
