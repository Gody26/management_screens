import 'package:flutter/material.dart';
import 'package:management_app/screens/selection_screen.dart';
import 'package:management_app/screens/student_login.dart';
import 'package:management_app/screens/teacher_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Management App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromRGBO(255, 151, 0, 1),
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        primaryColor: Color.fromRGBO(255, 151, 0, 1),
      ),
      home: SelectionScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
