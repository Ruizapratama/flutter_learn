import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Widget",
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

// statefulwidget
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String statusClicked;

  @override
  void initState() {
    super.initState();
    statusClicked = "off";
  }

  void onClickButton() {
    setState(() {
      statusClicked == "on" ? statusClicked = "off" : statusClicked = "on";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StatefulWidget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Status clicked is $statusClicked"),
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
            ),
            MaterialButton(
              color: statusClicked == "on" ? Colors.blue : Colors.red,
              textColor: Colors.white,
              onPressed: () {
                onClickButton();
              },
              child: Text(statusClicked == "on" ? "ON" : "OFF"),
            ),
          ],
        ),
      ),
    );
  }
}

// stateless widget
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("StatelessWidget"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//                 "This is StatelessWidget",
//             ),
//             Padding(
//                 padding: EdgeInsets.only(bottom: 10.0),
//             ),
//             MaterialButton(
//               onPressed: (){},
//               color: Colors.blueAccent,
//               child: Text(
//                 "Click Me",
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }