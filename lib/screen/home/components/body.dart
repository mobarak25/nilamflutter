import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/models/HomeCategory.dart';
import 'home_top_section.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeTopSection(),
        SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                ...List.generate(
                  demoHomeCategory.length,
                  (index) => HomeCaregoryCard(
                    category: demoHomeCategory[index],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}

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
