import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/size_healper.dart';

class DetailsItem extends StatelessWidget {
  final String title, value;
  const DetailsItem({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Row(
        children: [
          SizedBox(
            width: kWidth(context) * 0.3,
            child: Text(title),
          ),
          Text(
            value,
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
