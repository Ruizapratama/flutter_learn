import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Snackbar",
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Key key;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flutter Snackbar"),
      ),
      body: Builder(
        key: key,
        builder: (context) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Click button to show snackbar"),
                _buildSimpleSnackBar(context),
                _buildSnackBar(context),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildSimpleSnackBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: MaterialButton(
        onPressed: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text("This is simple snackbar"),
          ));
        },
        color: Colors.blue,
        child: Text(
          "Show Simple Snackbar",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildSnackBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: MaterialButton(
        onPressed: () {
          final snackbar = SnackBar(
            content: Text("Learn flutter with Codingtive.com"),
            duration: const Duration(milliseconds: 500),
            backgroundColor: Colors.teal,
            action: SnackBarAction(
              label: "OK",
              textColor: Colors.red,
              onPressed: () {
                print("OK has been clicked");
              },
            ),
          );
          Scaffold.of(context).showSnackBar(snackbar);
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