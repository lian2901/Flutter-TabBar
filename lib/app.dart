import 'package:belajar_tab_bar/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  //coba
  // test

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xFF263238), accentColor: Color(0xFF009688)),
      home: HomePage(),
    );
  }
}
