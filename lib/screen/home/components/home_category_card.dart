import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/models/HomeCategory.dart';

class HomeCaregoryCard extends StatelessWidget {
  final HomeCategory category;
  const HomeCaregoryCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 15),
      child: Column(
        children: [
          SizedBox(
            width: 40,
            height: 40,
            child: Image.asset(
              category.images,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),
          Text(
            category.title,
            maxLines: 1,
            style: TextStyle(
              fontSize: 14,
              color: kPrimaryColor,
            ),
          )
        ],
      ),
    );
  }
}
