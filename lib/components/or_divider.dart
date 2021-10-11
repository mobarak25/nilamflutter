import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          buildDivider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text("OR  CONTINUE WITH"),
          ),
          buildDivider(),
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return Expanded(
      child: Divider(
        color: kBorderColor,
        height: 0,
      ),
    );
  }
}
