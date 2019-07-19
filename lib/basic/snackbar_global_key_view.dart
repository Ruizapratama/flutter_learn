import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter SnackBar",
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flutter SnackBar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildSimpleSnackBar(),
            _buildSnackBar(),
          ],
        ),
      ),
    );
  }

  Widget _buildSimpleSnackBar() {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: MaterialButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text("Learn Flutter with Codingtive.com"),
          );
          _scaffoldKey.currentState.showSnackBar(snackBar);
        },
        color: Colors.blue,
        child: Text(
          "Show Simple SnackBar",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildSnackBar() {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: MaterialButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text("Complete SnackBar Example"),
            duration: const Duration(milliseconds: 800),
            backgroundColor: Colors.blueAccent,
            action: SnackBarAction(
              label: "OK",
              textColor: Colors.redAccent,
              onPressed: () {
                print("OK has been clicked");
              },
            ),
          );
          _scaffoldKey.currentState.showSnackBar(snackBar);
        },
        color: Colors.blue,
        child: Text(
          "Show Complete SnackBar",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}