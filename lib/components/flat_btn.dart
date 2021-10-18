import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/size_healper.dart';

class FlatBtn extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color bgColor, textColor;
  const FlatBtn({
    Key? key,
    required this.text,
    required this.press,
    this.bgColor = kBrandPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kWidth(context) * 0.5,
      height: 55,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),

          backgroundColor: bgColor,
          // foreground
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            fontFamily: "Poppins",
          ),
        ),
      ),
    );
  }
}
