import 'package:flutter/material.dart';
import 'package:flutter_sec_12/images.dart';

class DialogBoxDemo extends StatelessWidget {
  const DialogBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog Box"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(child:
        ElevatedButton(onPressed: (){
          showDialog(
            barrierDismissible: false,
              context: context,
            builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Thank You"),
                  content: Text("Login Successfully"),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("No")),
                    TextButton(onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> ImagesDemo()));
                    }, child: Text("Yes")),
                  ],
                );
            },);
        }, child: Text("Show Dialog Box"))
        ,),
    );
  }
}
