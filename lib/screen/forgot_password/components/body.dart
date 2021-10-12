import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nilam/components/default_button.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/screen/create_new_password/create_new_password_screen.dart';
import 'package:nilam/size_healper.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kWidth(context),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: kHeight(context) * 0.02),
            SvgPicture.asset(
              "assets/icons/Forgot Password Bg.svg",
              width: kWidth(context) * 0.7,
            ),
            SizedBox(height: 20),
            Text(
              "Reset password",
              style: TextStyle(
                color: kTextColor,
                fontSize: kWidth(context) * 0.08,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: kHeight(context) * 0.01),
            Text(
              "Enter the email or mobile related to your\nrecord and we'll send phone or email with\nguidelines to reset your password.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kTextLightColor,
              ),
            ),
            SizedBox(height: kHeight(context) * 0.05),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Email or Phone number",
                      hintText: "Please enter your email or phone number ",
                    ),
                  ),
                  SizedBox(height: kHeight(context) * 0.09),
                  DefaultButton(
                    text: "Send",
                    press: () {
                      Navigator.pushNamed(
                          context, CreateNewPasswordScreen.routeName);
                    },
                  )
                ],
              ),
            ),
            SizedBox(height: kHeight(context) * 0.03),
          ],
        ),
      ),
    );
  }
}
