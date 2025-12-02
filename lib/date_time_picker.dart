import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimePickerDemo extends StatefulWidget {
  const DateTimePickerDemo({super.key});

  @override
  State<DateTimePickerDemo> createState() => _DateTimePickerDemoState();
}

class _DateTimePickerDemoState extends State<DateTimePickerDemo> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay? selectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Date Time Picker"),
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
    ),
      body: Column(children: [
        Text(
          DateFormat.yMMMMEEEEd().format(selectedDate),
          style: TextStyle(
            fontWeight: FontWeight.w700,fontSize: 30
          ),
        ),
        ElevatedButton(onPressed: (){
          showDatePicker(
              context: context,
              firstDate: DateTime.now(),
              lastDate: DateTime(2300)).then((val){
                setState(() {
                  selectedDate = val!;
                });
          });
        }, child: Text("Show Date Picker")),
        Text(
          selectedTime == null ? "No time Selected" :
          selectedTime!.format(context).toString(),
          style: TextStyle(
              fontWeight: FontWeight.w700,fontSize: 30
          ),
        ),
        ElevatedButton(onPressed: (){
          showTimePicker(
              context: context,
              initialTime: TimeOfDay.now()).then((val){
                setState(() {
                  selectedTime = val;
                });
          });
        }, child: Text("Show Time Picker"))

      ],),

    );
  }
}
