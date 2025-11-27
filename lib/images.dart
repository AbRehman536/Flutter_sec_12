import 'package:flutter/material.dart';

class ImagesDemo extends StatelessWidget {
  const ImagesDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Images"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: 
          Column(
            children: [
              Container(
                color: Colors.green,
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1AKF7LelsXtbK8YAYYdiPrDMZdFd74ZTgkQ&s"
                ,width: 500, height: 400, fit: BoxFit.fill,),
              ),
              Image.asset("assets/images/Frame.png",
              
                fit: BoxFit.fill,
              ),
            ],
          ),
          ),
      ),
    );
  }
}
