import 'package:flutter/material.dart';

class ListtileDemo extends StatelessWidget {
  const ListtileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Tile"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return  Card(
            color: Colors.white70,
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Abdullah"),
              subtitle: Column(
                children: [
                  Text("Hello, How are you ?"),
                  Text("Hello, How are you ?"),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("10:30 AM"),
                  Icon(Icons.arrow_forward_ios_outlined)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
