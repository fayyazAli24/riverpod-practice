import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,title: Text("NumberScreen"),),
      body: Center(),
    );
  }
}
