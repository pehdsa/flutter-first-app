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
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
          '/': (context) => MyHomePage(title: 'Home'),
          '/about': (context) => AboutPage(title: 'Sobre')
      },
      //home: MyHomePage(title: 'Home')
      //about: AboutPage(title: 'Sobre')
    );
  }
}