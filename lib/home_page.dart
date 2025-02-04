import 'package:flutter/material.dart';
import 'package:sum_app/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, double> FormValue = {"Num1": 0, "Num2": 0};
  double Sum = 0;

  final TextEditingController Num1Controller = TextEditingController();
  final TextEditingController Num2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    MyInputOnChange(InputKey, InputValue) {
      setState(() {
        FormValue.update(InputKey, (value) => double.parse(InputValue));
      });
    }

    AddNumber() {
      setState(() {
        Sum = FormValue['Num1']! + FormValue['Num2']!;
        Num1Controller.clear();
        Num2Controller.clear();
      });
    }

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          'Sum App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.green,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SUM: ${Sum.toString()}',
                  style: HeadTextStyle(),
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: Num1Controller,
                  onChanged: (value) {
                    //set value to Num1
                    MyInputOnChange("Num1", value);
                  },
                  decoration: AppInputStyle("First Number"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: Num2Controller,
                  onChanged: (value) {
                    //set value to Num2
                    MyInputOnChange("Num2", value);
                  },
                  decoration: AppInputStyle("Second Number"),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      //Add Number
                      AddNumber();
                    },
                    child: Text(
                      'Add',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    style: AppButtonStyle(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
