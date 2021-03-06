import 'package:calc_app_/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
       ),
       darkTheme: ThemeData(brightness: Brightness.dark),

       routes: {
         '/':(context)=>HomePage()
       },
    );
  }
}


       