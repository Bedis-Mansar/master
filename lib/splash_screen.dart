import 'dart:async';


import 'package:flutter/material.dart';

import 'Login_Page.dart';

class  SplashScreen extends StatefulWidget {
  SplashScreen ({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){

    super.initState();
    Timer(Duration(seconds: 5), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>LoginPage())));
  }
  @override
  Widget build(BuildContext context) {
    return
      Scaffold (
        body: Container(
          child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset('assets/4.png',
                      fit: BoxFit.fill ),
                ),
              ]
          ),
        ),

      );
  }
}