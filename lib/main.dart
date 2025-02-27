import 'package:flutter/material.dart';
import 'package:untitled1/Pages/SplashPage.dart';

import 'ApiCalls/GetRandomText.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
      ),
      home:SplashPage(),
    );
  }
}

