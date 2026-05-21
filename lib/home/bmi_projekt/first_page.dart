import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var itController = TextEditingController();
  var result = "";
  var bgColors = Colors.lightGreen.shade200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: bgColors,
        child: Center(
          child: Container(
            width: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 18,
              children: [
                Text(
                  "BMI",
                  style: TextStyle(fontSize: 38, fontWeight: FontWeight.w800),
                ),
                TextField(
                  controller: wtController,
                  decoration: InputDecoration(
                    label: Text("Weight"),
                    hintText: "Enter Your Weight (in kgs)",
                    prefixIcon: Icon(Icons.line_weight_rounded),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  keyboardType: TextInputType.numberWithOptions(),
                ),
                TextField(
                  controller: ftController,
                  decoration: InputDecoration(
                    label: Text("Height"),
                    hintText: "Enter your height (in feet)",
                    prefixIcon: Icon(Icons.height),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                TextField(
                  controller: itController,
                  decoration: InputDecoration(
                    label: Text("inch"),
                    hintText: "Enter Your Height (In inch)",
                    prefixIcon: Icon(Icons.height_sharp),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    var wei = wtController.text.toString();
                    var feet = ftController.text.toString();
                    var inch = itController.text.toString();
                    if (wei != "" && feet != "" && inch != "") {
                      var iwt = int.parse(wei);
                      var ift = int.parse(feet);
                      var iInch = int.parse(inch);
                      var tInch = (ift * 12) + iInch;
                      var tCm = tInch * 2.54;
                      var tm = tCm / 100;
                      var bmi = iwt / (tm * tm);
                      var massg = "";
                      if (bmi < 25){
                        print("bov vadhi gyu lage chhe");
                      }
                      else if (18 < bmi){

                      }
                      else{

                      }

                      setState(() {
                        result = "your BMI IS :${bmi.toStringAsFixed(2)}";
                      });
                    } else {
                      setState(() {
                        result = "Jobaka badhi vstu bhar Pela";
                      });
                    }
                  },
                  label: Text("Click"),
                  icon: Icon(Icons.subdirectory_arrow_left),
                ),
                Text(result, style: TextStyle(fontSize: 35)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
