import 'package:flutter/material.dart';
import 'package:flutter_sec_12/images.dart';

class BottomSheetDemo extends StatelessWidget {
  const BottomSheetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(child:
      ElevatedButton(onPressed: (){
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Settings",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.cancel_outlined))
              ],),
              Text("Profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
              Text("Notifications",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
              Text("Chats",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
            ],);
          },);
      }, child: Text("Show Bottom Sheet"))
        ,),
    );
  }
}
