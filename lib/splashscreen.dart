import 'dart:async';

import 'package:flutter/material.dart';
import 'package:job_project/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();

    Timer(Duration(seconds: 2), ()
    {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()
      ));
    });
  }



  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
        color: Colors.white,
        
      child: const Center(
      
        child: Text('BookStore', 
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.w600,
          color: Colors.black
        ),
        ),
      
      ),
      ),    
      );
  }
}