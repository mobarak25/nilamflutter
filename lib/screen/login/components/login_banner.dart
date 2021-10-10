import 'package:flutter/material.dart';

class LoginBanner extends StatelessWidget {
  final bool login;
  const LoginBanner({
    Key? key,
    this.login = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height * 0.45,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/Login Bg.png",
            fit: BoxFit.cover,
          ),
          Container(
            color: Color(0xFF707070).withOpacity(0.5),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.1,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                login ? "Sign in to your account" : "Sign up an account",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.06,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
