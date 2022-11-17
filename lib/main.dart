import 'package:flutter/material.dart';
import 'package:restaurantappnew/screens/food_screen.dart';
import 'package:restaurantappnew/screens/homescreen.dart';
import 'package:restaurantappnew/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;

  void changeTheme() {
    setState(() {
      isDark = !isDark;

    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDark ? ThemeData.dark()  : ThemeData.light(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/main_screen',
      routes: {
        '/main_screen': (context) => MainScreen(changeTheme),
      },
    );
  }
}
