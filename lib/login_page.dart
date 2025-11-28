import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
            controller: emailController,
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
            controller: passwordController,
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
            child: ElevatedButton(onPressed: (){
              if(emailController.text.isEmpty){
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("Email is Empty")));
                return ;
              }
              if(passwordController.text.isEmpty){
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("Password is Empty")));
                return ;
              }
              if(passwordController.text.length < 8){
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("Password should be more than 8 digits")));
                return;
              }
            },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  elevation: 5,
                )
               , child: Text("Login")),
          ),
          Row(children: [
            Text("Don't have account ?"),
            TextButton(onPressed: (){
            }, child: Text("Sign Up"))
          ],)
        ],),
      ),
    );
  }
}
