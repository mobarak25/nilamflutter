import 'package:flutter/material.dart';

class HomeFilter extends StatelessWidget {
  const HomeFilter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 54,
      height: 50,
      decoration: BoxDecoration(
        color: Color(0XFF272B31),
        border: Border.all(
          color: Color(0XFF707070),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(
        Icons.tune,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}
