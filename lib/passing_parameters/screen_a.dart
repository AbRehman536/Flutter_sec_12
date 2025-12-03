import 'package:flutter/material.dart';
import 'package:flutter_sec_12/passing_parameters/screen_b.dart';
class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen A"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(child:
      ElevatedButton(onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context)=> ScreenB(
                  name : "Abdullah",
                  email : "abdullahrehman@gmail.com"
                )));
      }, child: Text("Go to Screen B")),),
    );
  }
}
