import 'package:flutter/material.dart';

class GridviewBuilder extends StatelessWidget {
  const GridviewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Builder"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 140,crossAxisSpacing: 20, mainAxisSpacing: 20,
          ),
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
            return Container(color: Colors.red,);
        },

          )
    );
  }
}