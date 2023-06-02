import 'package:flutter/material.dart';

import 'package:lazaapp/pages/loadingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Laza App",
      home: loadingPage(), //setelah login harus ke menu!
    );
  }
}
