import 'package:flutter/material.dart';
import 'package:flutter_sec_12/provider/user.dart';
import 'package:provider/provider.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
        backgroundColor: Colors.orange,
      ),
      body: Column(children: [
        Text(userProvider.getName()),
        Text(userProvider.getEmail()),
      ],),
    );
  }
}
