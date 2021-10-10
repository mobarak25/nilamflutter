import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      color: kPrimaryColor,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: double.infinity,
              height: 200,
              color: Colors.amber,
              child: Text("data"),
            ),
          ),
          Positioned(
            top: 190,
            child: Container(
              width: double.infinity,
              height: 200,
              color: Colors.black,
              child: Text("data"),
            ),
          ),
        ],
      ),
    );
  }
}
