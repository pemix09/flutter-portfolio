import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[800],
      ),
      body: Center(
          child: Text(
        'Hello',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
          color: Colors.grey[600],
          fontFamily: 'IndieFlower',
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('Hello'),
        backgroundColor: Colors.deepPurple[800],
        child: const Text('click'),
      ),
    );
  }
}
