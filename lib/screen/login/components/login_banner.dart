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
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: size.width,
          height: size.height * 0.45,
          child: Stack(
            clipBehavior: Clip.none,
            fit: StackFit.expand,
            children: [
              Image.asset(
                "assets/images/Login Bg.png",
                fit: BoxFit.cover,
              ),
              Container(
                color: Color(0xFF353A44).withOpacity(0.6),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width * 0.12,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                    ),
                  ),
                  Text(
                    login ? "Sign in to your account" : "Sign up an account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width * 0.06,
                      fontFamily: "Poppins",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: -1,
          left: 0,
          child: Container(
            height: 20,
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
