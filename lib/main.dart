import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nilam/routs.dart';
import 'package:nilam/screen/home/home_screen.dart';
import 'package:nilam/theme.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // initialRoute: SplashScreen.routeName,
      initialRoute: HomeScreen.routeName,
      routes: routs,
    );
  }
}
