import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';

class SectionTitle extends StatelessWidget {
  final String text;
  final GestureTapCallback press;
  const SectionTitle({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: Color(0XFF272B31),
              fontWeight: FontWeight.w500,
            ),
          ),
          GestureDetector(
            onTap: press,
            child: Row(
              children: [
                Text(
                  "View More",
                  style: TextStyle(
                    fontSize: 15,
                    color: kBrandPrimaryColor,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 16,
                  color: kBrandPrimaryColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
