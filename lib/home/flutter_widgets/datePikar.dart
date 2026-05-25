import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';

class DAtePikarClass extends StatefulWidget {
  const DAtePikarClass({super.key});

  @override
  State<DAtePikarClass> createState() => _DAtePikarClassState();
}

class _DAtePikarClassState extends State<DAtePikarClass> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 5,
      children: [
        Text('Select Date', style: TextStyle(fontSize: 28)),
        ElevatedButton(
          onPressed: () async {
            DateTime? datePicker = await showDatePicker(
              context: context,
              initialDate: DateTime.timestamp(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2050),
            );
            if(datePicker!=null){
              print('this is year ${datePicker}');
            }
          },
          child: Text('Select'),
        ),
        ElevatedButton(onPressed: () async {
          TimeOfDay? TimePicker = await showTimePicker(context: context, initialTime: TimeOfDay.now());
          if(TimePicker!=null){
            print('this is Time = ${TimePicker}');
          }

        }, child: Text('Select Time'))
      ],
    );
  }
}
