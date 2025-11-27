import 'package:flutter/material.dart';

class RowColumnDemo extends StatelessWidget {
  const RowColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text("Row Column"),
          backgroundColor: Colors.yellow,
        ),
        body: Container(
          width: double.infinity,
          color: Colors.green,
          child: Column(
            children: [
              SizedBox(height: 20,),
              Text("Lorem Ipsum",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),
              ),
              SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Icon(Icons.favorite),
                  Icon(Icons.comment),
                  Icon(Icons.bookmark),
                  Icon(Icons.share),
                ],)
            ],
          ),
        ),

      );
  }
}
