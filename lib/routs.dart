import 'package:flutter/cupertino.dart';
import 'package:nilam/screen/login/login_screen.dart';
import 'package:nilam/screen/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routs = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
};
