import 'package:flutter/material.dart';
import 'package:task_ui_building/screen/home/home_screen.dart';
import 'package:task_ui_building/theme/pallete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Building',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Pallete.greyColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        dividerColor: Colors.black,
      ),
      home: const HomeScreen(),
    );
  }
}


