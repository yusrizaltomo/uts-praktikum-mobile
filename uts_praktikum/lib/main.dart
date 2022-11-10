import 'package:flutter/material.dart';
import 'package:uts_praktikum/bayar.dart';
import 'package:uts_praktikum/home_page.dart';
import 'package:uts_praktikum/login.dart';
import 'package:uts_praktikum/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SSscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
