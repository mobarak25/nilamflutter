import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nilam/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        children: [
          Spacer(flex: 3),
          Container(
            width: 250,
            child: Image.asset("assets/images/logo.png"),
          ),
          Spacer(flex: 1),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: kBrandPrimaryColor, // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () {},
                child: Text("Continue"),
              ),
            ),
          ),
          Spacer(flex: 3),
        ],
      ),
    );
  }
}

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
