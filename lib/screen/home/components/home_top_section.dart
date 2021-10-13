import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';

import 'home_filter.dart';
import 'home_search_field.dart';

class HomeTopSection extends StatelessWidget {
  const HomeTopSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: kPrimaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HomeSearchField(),
          HomeFilter(),
        ],
      ),
    );
  }
}
