import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSwitchDemo extends StatefulWidget {
  const CupertinoSwitchDemo({super.key});

  @override
  State<CupertinoSwitchDemo> createState() => _CupertinoSwitchDemoState();
}

class _CupertinoSwitchDemoState extends State<CupertinoSwitchDemo> {
  bool isSwitchOn = false;
  double currentValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(child: Column(
        children: [
          Card(
            child: ListTile(
              leading: Icon(isSwitchOn ? Icons.notification_add : Icons.notifications_none),
              title: Text("Notification"),
              subtitle: Text(isSwitchOn ? "ON" : "OFF" ),
              trailing: CupertinoSwitch(
                  value: isSwitchOn,
                  onChanged: (val){
                    setState(() {
                      isSwitchOn = val;
                    });
              },
              activeColor: Colors.blue,
                trackColor: Colors.black,
                thumbColor: Colors.red,
              ),
            ),
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTickMarkColor: Colors.redAccent,
              inactiveTickMarkColor: Colors.grey,
              thumbColor: Colors.red,
              overlayColor: Colors.red.shade200
            ),
            child: Slider(
                value: currentValue,
                min: 0,max: 100,
                divisions: 100,
                label: currentValue.round().toString(),
                onChanged: (val){
                  setState(() {
                    currentValue = val;
                  });
                }),
          )
        ],
      ),),
    );
  }
}
