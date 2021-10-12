import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nilam/constants.dart';

class SocialLoginCart extends StatelessWidget {
  final Color color;
  final String text, svgSrc;
  final GestureTapCallback press;

  const SocialLoginCart({
    Key? key,
    required this.color,
    required this.text,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 50,
        width: size.width * 0.42,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          border: Border.all(
            color: text == "Google" ? kBorderColor : Color(0XFF3B5999),
          ),
          boxShadow: [
            BoxShadow(
              color: kBorderColor,
              blurRadius: 3,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 35,
              height: 35,
              padding: EdgeInsets.all(5),
              child: SvgPicture.asset(svgSrc),
            ),
            Text(
              text,
              style: TextStyle(
                color: text == "Google" ? kPrimaryColor : Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                fontFamily: "Poppins",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
