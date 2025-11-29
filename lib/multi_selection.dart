import 'package:flutter/material.dart';

class MultiSelectionDemo extends StatefulWidget {
  const MultiSelectionDemo({super.key});

  @override
  State<MultiSelectionDemo> createState() => _MultiSelectionDemoState();
}

class _MultiSelectionDemoState extends State<MultiSelectionDemo> {
  List<int> selectedIndex = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multiple Selection"),
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
                  if(selectedIndex.contains(index)){
                    selectedIndex.remove(index);
                  }else{
                    selectedIndex.add(index);
                  }
                });
              },
              tileColor: selectedIndex.contains(index) ? Colors.blue : Colors.white,
              textColor: selectedIndex.contains(index) ? Colors.white : Colors.black,
              iconColor: selectedIndex.contains(index) ? Colors.white : Colors.black,
              leading: Icon( selectedIndex.contains(index) ? Icons.person_2 : Icons.person ),
              title: Text("Selected Index: $selectedIndex"),
              subtitle: Text("Index: $index"),
              trailing:
                  Text(selectedIndex.contains(index) ? "11:23 AM" : "Saturday"),
            ),
          );
        },
      ),
    );
  }
}
