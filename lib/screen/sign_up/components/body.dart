import 'package:flutter/material.dart';
import 'package:nilam/components/already_have_an_account.dart';
import 'package:nilam/components/or_divider.dart';
import 'package:nilam/components/social_login_cart.dart';
import 'package:nilam/screen/login/components/login_banner.dart';
import 'package:nilam/screen/login/login_screen.dart';
import 'package:nilam/screen/sign_up/components/sign_up_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          LoginBanner(
            login: false,
          ),
          SignUpForm(),
          SizedBox(height: 10),
          OrDivider(),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SocialLoginCart(
                  text: 'Facebook',
                  color: Color(0XFF3B5999),
                  svgSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocialLoginCart(
                  text: 'Google',
                  color: Color(0XFFFFFFFF),
                  svgSrc: "assets/icons/google.svg",
                  press: () {},
                ),
              ],
            ),
          ),
          AlreadyHaveAnAccount(
            login: false,
            press: () {
              Navigator.pushNamed(context, LoginScreen.routeName);
            },
          )
        ],
      ),
    );
  }
}
