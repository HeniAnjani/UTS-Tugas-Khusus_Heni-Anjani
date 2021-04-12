import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double height, weight, result;
  String status;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI CALCULATOR',
      home: Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          backgroundColor: Colors.yellow,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'enter your height (in m)',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) {
                  height = double.parse(value);
                },
              ),
              Text(
                'enter your weight(in kg)',
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                onChanged: (value) {
                  weight = double.parse(value);
                },
              ),
              FlatButton(
                color: Colors.green,
                child: Text(
                  'calculate',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                onPressed: () {
                  setState(() {
                    result = weight / (height * height);
                    if (result < 18) {
                      status = "underweight";
                    } else if (result < 26) {
                      status = "Normal";
                    } else {
                      status = "overweight";
                    }
                  });
                },
              ),
              Text("result= ${result.toString()}\n status=$status",
                  style: TextStyle(fontSize: 20))
            ],
          ),
        ),
      ),
    );
  }
}
