import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Text("Login Page",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              //label: Text("Email"),
              hint: Text("abdullah@gmail.com"),
              prefixIcon: Icon(Icons.email),
              suffixIcon: Icon(Icons.account_balance),
              border: InputBorder.none,
            ) ,
          ),
          SizedBox(height: 10,),
          TextField(
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
            label: Text("Password"),
            hint: Text("1234567890-"),
            prefixIcon: Icon(Icons.lock),
            suffixIcon: Icon(Icons.visibility),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none
            )
          ) ,),
          SizedBox(height: 20,),
          SizedBox(
            width: 400,
            height: 50,
            child: ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  elevation: 5,
                )
               , child: Text("Login")),
          ),
          Row(children: [
            Text("Don't have account ?"),
            TextButton(onPressed: (){}, child: Text("Sign Up"))
          ],)
        ],),
      ),
    );
  }
}
