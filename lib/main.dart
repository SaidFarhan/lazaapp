import 'package:flutter/material.dart';
import 'package:lazaapp/pages/homePage.dart';

import 'package:lazaapp/pages/loadingPage.dart';
import 'package:lazaapp/pages/loginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Laza App",
      home: loadingPage(),
    );
  }
}
