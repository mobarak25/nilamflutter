import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';

class IconBtn extends StatelessWidget {
  final IconData icon;
  final GestureTapCallback press;
  const IconBtn({
    Key? key,
    required this.icon,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 35,
        height: 35,
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.75),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.38),
              blurRadius: 10,
              offset: Offset(0, 5),
            )
          ],
        ),
        child: Icon(
          icon,
          size: 20,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
