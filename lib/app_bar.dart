import 'package:flutter/material.dart';


class AppBarDemo extends StatelessWidget {
  const AppBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios,color: Colors.red,size: 40,),
        centerTitle: true,
        title: Text("App Bar",style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,
          color: Colors.orange
        ),),
        actions: [
          Icon(Icons.notification_add,color: Colors.green,size: 40,),
          Icon(Icons.settings,color: Colors.yellow,size: 50,),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {  },
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white, 
        label: Text("Add"),
        icon: Icon(Icons.add),
         ),
    );
  }
}
