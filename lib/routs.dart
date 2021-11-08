import 'package:flutter/cupertino.dart';
import 'package:nilam/screen/create_new_password/create_new_password_screen.dart';
import 'package:nilam/screen/forgot_password/forgot_password_screen.dart';
import 'package:nilam/screen/home/home_screen.dart';
import 'package:nilam/screen/login/login_screen.dart';
import 'package:nilam/screen/post_your_ad_form_1/post_your_ad_form_1.dart';
import 'package:nilam/screen/post_your_ad_form_2/post_your_ad_form_2.dart';
import 'package:nilam/screen/post_your_add/post_your_ad_screen.dart';
import 'package:nilam/screen/product_details/product_details_screen.dart';
import 'package:nilam/screen/sign_up/sign_up_screen.dart';
import 'package:nilam/screen/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routs = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  CreateNewPasswordScreen.routeName: (context) => CreateNewPasswordScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ProductDetailsScreen.routeName: (context) => ProductDetailsScreen(),
  PostYourAddScreen.routeName: (context) => PostYourAddScreen(),
  PostYourAdFormOneScreen.routeName: (context) => PostYourAdFormOneScreen(),
  PostYourAdFormTwoScreen.routeName: (context) => PostYourAdFormTwoScreen(),
};
