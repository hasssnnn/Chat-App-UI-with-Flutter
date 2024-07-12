import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     // title: 'Flutter Chat UI',
      //theme: ThemeData(
       // primaryColor: Colors.red,
        //colorScheme:
          //  ColorScheme.fromSwatch(accentColor: const Color(0xfffef9eb)),
      //),
      home:  HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
