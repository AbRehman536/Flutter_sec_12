import 'package:flutter/material.dart';

class GridviewCount extends StatelessWidget {
  const GridviewCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Count"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            children: [
              Container(color: Colors.red,child: Column(
                children: [
                  Text("Red"),
                  Text("Red"),
                  Text("Red"),
                  Text("Red"),
                  Text("Red"),
                  Text("Red"),
                ],
              ),),
              Container(color: Colors.green,),
              Container(color: Colors.blue,),
              Container(color: Colors.yellow,),
              Container(color: Colors.orange,),
            ],
        ),
      ),
    );
  }
}