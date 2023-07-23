import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red,
        ),
      ),
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
   
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter = _counter -1;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeiro aplicativo em Flutter'),               
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_counter',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('Incrementar'), 
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),             
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: _resetCounter,
              child: Text('Reset'),
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: _decrementCounter,
              child: Text('Decrementar'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
            ),
            
            
          ],
        ),
      ),
    );
  }
}
