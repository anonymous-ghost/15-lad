import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KH-32: Antonyuk Oleksandr\'s last Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 1;

  // Функція для обчислення y = (x + 3) * (4 - x)
  double calculateY(int x) {
    return (x + 3) * (4 - x).toDouble();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KH-32: Antonyuk Oleksandr\'s last Flutter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Current value of y for x = $_counter:',
            ),
            Text(
              '${calculateY(_counter)}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // Переміщаємо лічильник
            if (_counter == 1) {
              _counter = 2; // змінюємо крок лічильника
            } else {
              _counter = 1;
            }
          });
        },
        tooltip: 'Change counter',
        child: Icon(
          _counter == 1 ? Icons.person : Icons.mouse,
        ),
      ),
    );
  }
}
