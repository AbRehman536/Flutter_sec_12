import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OTP extends StatelessWidget {
  const OTP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP"),
      ),
      body: Center(child:
        Pinput(
          length: 6,
          showCursor: true,
          onCompleted: (value){
            print(value);
          },
          defaultPinTheme: PinTheme(
            width: 50, height: 50,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black)
            ),
            textStyle: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 20,
              color: Colors.white
            )
          ),
        )
        ,),
    );
  }
}
