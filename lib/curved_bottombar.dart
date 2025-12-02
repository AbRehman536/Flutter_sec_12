import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sec_12/cupertino_switch.dart';
import 'package:flutter_sec_12/login_page.dart';
import 'package:flutter_sec_12/multi_selection.dart';

class CurvedBarDemo extends StatefulWidget {
  const CurvedBarDemo({super.key});

  @override
  State<CurvedBarDemo> createState() => _CurvedBarDemoState();
}

class _CurvedBarDemoState extends State<CurvedBarDemo> {
  int selectedIndex = 0;
  List<Widget> screenList =[CupertinoSwitchDemo(),MultiSelectionDemo(), LoginPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.red,
          color: Colors.yellow,
          buttonBackgroundColor: Colors.yellow,
          onTap: (value){
            setState(() {
              selectedIndex = value;
            });
          },
          items: [
            Icon(Icons.home),
            Icon(Icons.settings),
            Icon(Icons.person),
            ]),

    );
  }
}
