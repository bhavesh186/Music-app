import 'package:flutter/material.dart';
import 'package:music_app/Plant%20App%20Screen/first_screen.dart';

import 'View/bottom_navigation_page.dart';
import 'View/homepage.dart';
import 'package:get/get.dart';

import 'View/second_page.dart';
import 'View/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music App',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BottomNavigationPage(),
    );
  }
}
