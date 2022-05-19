import 'package:flutter/material.dart';

class UnkownScreen extends StatelessWidget {
  const UnkownScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unkown Page'),
      ),
      body: Center(
        child: Text(
          'No Page Found',
          style: TextStyle(
              color: Colors.cyanAccent,
              fontSize: 40,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
