import 'package:flutter/material.dart';

import 'my_buttons.dart';

void main() {
 runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String topic="Packages";
  callback(varTopic){
    setState(() {
      topic=varTopic;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Learning Flutter"),
          backgroundColor : Colors.blue,
        ),
        body: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: 70,
              margin: const EdgeInsets.only(top:50,left: 40,right: 40, bottom: 20),
              decoration: BoxDecoration(
                color:Colors.lightBlue,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: Text(
                  "We are learning Flutter "+topic,
                  style: TextStyle(
                    fontSize: 20,
                    color:Colors.white
                  ),
                ),
              ),
            ),
            MyButtons(topic: "Cubit", callbackFunction:callback),
            MyButtons(topic: "BLoc", callbackFunction:callback),
            MyButtons(topic: "GetX", callbackFunction:callback)
          ],
        ),
      ),
    );
  }
}