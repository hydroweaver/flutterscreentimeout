import 'package:flutter/material.dart';
import 'package:app_settings/app_settings.dart';

void main() {
  runApp(MyApp());
}

bool timeoutPressed = false;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Timeout'),
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
  String timeoutText = "Default Timeout";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                AppSettings.openDisplaySettings();
              },
              child: Text(
                'Open Display Settings',
                style: TextStyle(fontSize: 32.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//More can be done : https://stackoverflow.com/questions/51846104/flutter-deactivate-screen-timeout
//https://developer.android.com/reference/android/app/admin/DevicePolicyManager#setMaximumTimeToLock(android.content.ComponentName,%20long)
//Open Directly from Icon, how?

// Junk Code
//             RaisedButton(
//               onPressed: AppSettings.openDisplaySettings(),
//               // () {

//               //   setState(() {
//               //     if (!timeoutPressed) {
//               //       timeoutText = "Longer Timeout";
//               //       timeoutPressed = true;
//               //     } else {
//               //       timeoutText = "Default Timeout";
//               //       timeoutPressed = false;
//               //     }
//               //   });
//               //   Fluttertoast.showToast(
//               //       msg: "$timeoutText Set",
//               //       toastLength: Toast.LENGTH_SHORT,
//               //       backgroundColor: Colors.blue,
//               //       textColor: Colors.white,
//               //       fontSize: 16.0);
//               // },
//               child: Text(
//                 timeoutText,
//                 style: TextStyle(fontSize: 32.0),
//               ),
//             )
