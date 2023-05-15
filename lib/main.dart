// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:my_flutter_project_task/bigscreen/webviewpage.dart';
// import 'package:my_flutter_project_task/MyTask.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'inConsult',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      home: Webviewpage(),
    );
  }
}
