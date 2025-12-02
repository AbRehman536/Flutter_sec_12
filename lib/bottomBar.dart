import 'package:flutter/material.dart';
import 'package:flutter_sec_12/cupertino_switch.dart';
import 'package:flutter_sec_12/login_page.dart';
import 'package:flutter_sec_12/multi_selection.dart';

class BottombarDemo extends StatefulWidget {
  const BottombarDemo({super.key});

  @override
  State<BottombarDemo> createState() => _BottombarDemoState();
}

class _BottombarDemoState extends State<BottombarDemo> {
  int selectedIndex = 0;
  List<Widget> screenList =[CupertinoSwitchDemo(),MultiSelectionDemo(), LoginPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        onTap: (value){
          setState(() {
            selectedIndex = value;
          });
        },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),

    );
  }
}
