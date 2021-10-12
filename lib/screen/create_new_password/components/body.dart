import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nilam/screen/create_new_password/components/create_new_password_form.dart';
import 'package:nilam/screen/splash/components/background.dart';
import 'package:nilam/size_healper.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: kHeight(context) * 0.09),
            SvgPicture.asset(
              "assets/icons/newpassword.svg",
              width: kWidth(context) * 0.6,
            ),
            SizedBox(height: kHeight(context) * 0.03),
            Text(
              "Create new password",
              style: TextStyle(
                fontSize: kWidth(context) * 0.058,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Code is sent to phone  to reset your password.",
              style: TextStyle(
                fontSize: kWidth(context) * 0.035,
              ),
            ),
            SizedBox(height: kHeight(context) * 0.04),
            CreateNewPasswordForm(),
          ],
        ),
      ),
    );
  }
}
