import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text('LOGIN',
          style: GoogleFonts.inter(fontSize: 20, color: Colors.white)),
      Text('Username'),
      SizedBox(height: 30),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: TextField(
          controller: _usernameController,
          style: TextStyle(color: Color.fromARGB(255, 161, 51, 51)),
          decoration: InputDecoration(
            labelStyle: TextStyle(color: Colors.white),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      Text('Password'),
      SizedBox(height: 30),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: TextField(
          controller: _passwordController,
          style: TextStyle(color: Color.fromARGB(255, 161, 51, 51)),
          decoration: InputDecoration(
            labelStyle: TextStyle(color: Colors.white),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      ElevatedButton(
          onPressed: (() {
            String username = _usernameController.text;
            Navigator.pushNamed(context, '/home', arguments: username);
          }),
          child: Text('LOGIN')),
    ]));
  }
}
