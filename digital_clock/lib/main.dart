import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DigitalClock(),
              SizedBox(height: 20,),
              DigitalClock(
                is24HourTimeFormat: false,
                digitAnimationStyle: Curves.bounceInOut,
              ),
              SizedBox(height: 20,),
              DigitalClock(
                digitAnimationStyle: Curves.bounceOut,
                is24HourTimeFormat: false,
                areaDecoration: BoxDecoration(
                  color: Colors.transparent,                  
                ),
                hourMinuteDigitTextStyle: TextStyle(color:Colors.black,fontSize: 50),
                amPmDigitTextStyle: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold
                ),
              )
            ],),
      ),
    );
  }
}
