import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Password Visibility",
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool _isHidePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Password Visibility"),
      ),
      body: Container(
        padding: EdgeInsets.all(24.0),
        child: _buildPasswordField(),
      ),
    );
  }

  Widget _buildPasswordField() {
    return TextFormField(
      obscureText: _isHidePassword,
      autofocus: false,
      initialValue: '',
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        labelText: 'Password',
        suffixIcon: GestureDetector(
          onTap: () {
            _togglePasswordVisibility();
          },
          child: Icon(
            _isHidePassword ? Icons.visibility_off : Icons.visibility,
            color: _isHidePassword ? Colors.grey : Colors.blue,
          ),
        ),
        isDense: true,
      ),
    );
  }
}