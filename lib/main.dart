import 'package:flutter/material.dart';
import 'package:newsapp_api/category.dart';
import 'package:newsapp_api/news.dart';
import 'package:newsapp_api/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/category': (context) => CategoryScreen(),
        '/news': (context) => NewsScreen(),
      },
    );
  }
}
