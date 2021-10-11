import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const AlreadyHaveAnAccount({
    Key? key,
    this.login = false,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            login ? "Don't Have an Account yet?" : "Already have an account?",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: kPrimaryColor,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
            ),
          ),
          GestureDetector(
            onTap: press,
            child: Text(
              login ? " Sign Up" : " Sign In",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: kBrandPrimaryColor,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
