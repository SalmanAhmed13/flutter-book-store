import 'package:flutter/material.dart';
import 'package:job_project/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
  
      home: SplashScreen(),
    );
  }
}


// GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//       crossAxisSpacing: 10,
//       mainAxisSpacing: 10
//       ),
//       children: [
//         Image.asset('assets/boy.jpg')
//       ],
//       );
