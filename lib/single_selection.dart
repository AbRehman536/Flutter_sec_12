import 'package:flutter/material.dart';

class SingleSelectionDemo extends StatefulWidget {
  const SingleSelectionDemo({super.key});

  @override
  State<SingleSelectionDemo> createState() => _SingleSelectionDemoState();
}

class _SingleSelectionDemoState extends State<SingleSelectionDemo> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Selection"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return  Card(
            color: Colors.white70,
            child: ListTile(
              onTap: (){
                setState(() {
                  selectedIndex = index;
                });
              },
              selected: selectedIndex == index,
              selectedColor: Colors.white,
              selectedTileColor: Colors.blue,
              leading: Icon(Icons.person),
              title: Text("Abdullah, $selectedIndex"),
              subtitle: Text("Hello, How are you ?, $index"),
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
