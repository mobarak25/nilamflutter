import 'package:flutter/material.dart';
import 'package:nilam/components/default_button.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/screen/create_new_password/components/otp_fields.dart';
import 'package:nilam/size_healper.dart';

class CreateNewPasswordForm extends StatefulWidget {
  const CreateNewPasswordForm({Key? key}) : super(key: key);

  @override
  _CreateNewPasswordFormState createState() => _CreateNewPasswordFormState();
}

class _CreateNewPasswordFormState extends State<CreateNewPasswordForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "OTP",
              style: TextStyle(
                color: Colors.white,
                fontSize: kWidth(context) * 0.04,
              ),
            ),
            SizedBox(height: 8),
            OtpFields(),
            SizedBox(height: 20),
            Text(
              "Create Password",
              style: TextStyle(
                color: Colors.white,
                fontSize: kWidth(context) * 0.04,
              ),
            ),
            SizedBox(height: 8),
            TextFormField(
              obscureText: true,
              decoration: buldDecoration(visibility: false),
            ),
            SizedBox(height: 25),
            Text(
              "Confirm Password",
              style: TextStyle(
                color: Colors.white,
                fontSize: kWidth(context) * 0.04,
              ),
            ),
            SizedBox(height: 8),
            TextFormField(
              obscureText: true,
              decoration: buldDecoration(visibility: false),
            ),
            SizedBox(height: kHeight(context) * 0.09),
            DefaultButton(
              press: () {},
              text: 'Reset password',
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't receive the code? ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: kWidth(context) * 0.04,
                  ),
                ),
                Text(
                  " Resend",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: kWidth(context) * 0.04,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  InputDecoration buldDecoration({required bool visibility}) {
    return InputDecoration(
      suffixIcon: visibility
          ? Icon(Icons.visibility, color: kTextColor)
          : Icon(
              Icons.visibility_off,
              color: kTextColor,
            ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      filled: true,
      fillColor: Colors.white,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(13),
          bottomLeft: Radius.circular(13),
          bottomRight: Radius.circular(13),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(13),
          bottomLeft: Radius.circular(13),
          bottomRight: Radius.circular(13),
        ),
      ),
    );
  }
}
