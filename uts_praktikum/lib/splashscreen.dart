import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uts_praktikum/login.dart';

class SSscreen extends StatefulWidget {
  const SSscreen({super.key});

  @override
  State<SSscreen> createState() => _SSscreenState();
}

class _SSscreenState extends State<SSscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginPage(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(50),
          // child: Text(
          //   "Toko Online",
          //   style: TextStyle(
          //       color: Colors.white, fontSize: 30, fontWeight: FontWeight.w600),
          // ),
          child: Image.asset("assets/logo.png"),
        ),
      ),
    );
  }
}
