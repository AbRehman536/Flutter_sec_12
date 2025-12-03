import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  final String name;
  final String email;
  const ScreenB({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen B"),
        backgroundColor: Colors.orange,
      ),
      body: Column(children: [
        Text(name,style: TextStyle(
          fontSize: 30
        ),),
        Text(email,style: TextStyle(
          fontSize: 30
        ),),
      ],),
    );
  }
}
