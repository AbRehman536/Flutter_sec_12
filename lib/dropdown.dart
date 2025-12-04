import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DropdownDemo extends StatefulWidget {
  const DropdownDemo({super.key});

  @override
  State<DropdownDemo> createState() => _DropdownDemoState();
}

class _DropdownDemoState extends State<DropdownDemo> {
  String? selectedValue;
  List<String> course = ["Flutter", "Web", "Angular", "UI/UX", "Graphics"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drop Down"),
      ),
      body: Center(child:
      Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage("assets/images/Frame.png"),
          ),
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.blue,
            child: Icon(Icons.person_2),
          ),
          ClipOval(
              child: Image.asset("assets/images/Frame2.png",
              width: 80,height: 80,fit: BoxFit.cover,)),
          SizedBox(height: 40, width: 350,
            child: ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 5,
                )
                , child: Text("Click Me",style: GoogleFonts.kronaOne(
                  fontSize: 20, fontWeight: FontWeight.w700,
                  color: Color(0xffF1F3F8)
                ),)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.yellow,
                filled: true,
                label: Text("UserName"),
                hint: Text("Abdullah Rehman"),
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.account_balance),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                )
              ),
            ),
          ),
          DropdownButton(
            hint: Text("Select Course"),
              value: selectedValue,
              items: course.map((item){
                return DropdownMenuItem(
                    value: item,
                    child: Text(item));
              }).toList(),
            onChanged: (value) {
              setState(() {
                selectedValue = value;
              });
            },
              ),
        ],
      ),),
    );
  }
}
