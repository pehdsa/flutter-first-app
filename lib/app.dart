import 'package:flutter/material.dart';
import 'home.dart';
import 'about.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(    
        brightness: Brightness.light,    
        primaryColor: Colors.black,
        primaryIconTheme: IconThemeData(
            color: Colors.black
        ),
        primaryTextTheme: TextTheme(
            title: TextStyle(
                color: Colors.black,
                fontFamily: "Aveny"
            )
        ),
        textTheme: TextTheme(
            title: TextStyle(
                color: Colors.black
            )
        )
      ),
      initialRoute: '/',
      routes: {
          '/': (context) => MyHomePage(),
          '/about': (context) => AboutPage(title: 'Sobre')
      },
    );
  }
}