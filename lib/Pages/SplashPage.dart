import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Pages/HomePage.dart';

class SplashPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => SplashPageState();


}

class SplashPageState extends State<SplashPage>{

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2),(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>MyHomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(color: Colors.deepOrange,
      height: double.infinity,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Random Facts',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),),
          Image.asset('assets/Images/blackcat.png',height: 40,width: 40,)        ]

      ),),
   );
  }

}