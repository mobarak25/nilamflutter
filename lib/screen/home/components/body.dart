import 'package:flutter/material.dart';
import 'package:nilam/components/section_title.dart';
import 'package:nilam/models/HomeCategory.dart';
import 'package:nilam/screen/home/components/featured_auctions.dart';
import 'package:nilam/screen/home/components/featured_product.dart';
import 'package:nilam/screen/home/components/home_category_card.dart';
import 'package:nilam/screen/home/components/home_slider_section.dart';
import 'home_top_section.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
          SizedBox(height: 15),
          HomeSliderSection(),
          SizedBox(height: 20),
          SectionTitle(
            text: "Featured Auctions",
            press: () {},
          ),
          SizedBox(height: 10),
          FeaturedAuctions(),
          SizedBox(height: 20),
          SectionTitle(
            text: "Featured Products",
            press: () {},
          ),
          SizedBox(height: 10),
          FeaturedProduct(),
          SizedBox(height: 20),
          SectionTitle(
            text: "Recommended For You",
            press: () {},
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
