import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: [
        Positioned(
          left: -size.width * 0.5,
          top: -size.width * 0.45,
          child: SvgPicture.asset(
            "assets/images/Splash Bg.svg",
            width: 400,
          ),
        ),
        Positioned(
          right: -size.width * 0.5,
          bottom: -size.width * 0.45,
          child: SvgPicture.asset(
            "assets/images/Splash Bg.svg",
            width: 400,
          ),
        ),
        child,
      ],
    );
  }
}
