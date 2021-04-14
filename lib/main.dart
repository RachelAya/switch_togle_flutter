import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Switch Check',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Switch Check"),
          ),
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                GreenSwitch(),
              ])),
        ));
  }
}

class GreenSwitch extends StatefulWidget {
  @override
  _GreenSwitchState createState() => _GreenSwitchState();
}

class _GreenSwitchState extends State<GreenSwitch> {
  bool isSwitched = false;
  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Transform.scale(
          scale: 2,
          child: Switch(
            onChanged: toggleSwitch,
            value: isSwitched,
            activeColor: Colors.blue,
            activeTrackColor: Colors.yellow,
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: Colors.grey,
          )),
      // Text(
      //   '$textValue',
      //   style: TextStyle(fontSize: 20),
      // )
    ]);
  }
}
