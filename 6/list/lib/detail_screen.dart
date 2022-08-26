import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  final String drzava;
  SecondRoute({super.key, required this.drzava});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Screen'),
      ),
      body:
          Column(
            children: [CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/sun.png'),
            ),
            Text(this.drzava)],
          )
    );
  }
}