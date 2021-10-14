import 'package:flutter/material.dart';
import 'package:nilam/models/HomeCategory.dart';
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

          // CarouselSlider(
          //   options: CarouselOptions(
          //     height: 200.0,
          //     autoPlay: true,
          //     viewportFraction: 1,
          //   ),
          //   items: [1, 2, 3, 4, 5].map((i) {
          //     return Builder(
          //       builder: (BuildContext context) {
          //         return Container(
          //           width: MediaQuery.of(context).size.width,
          //           margin: EdgeInsets.symmetric(horizontal: 1),
          //           decoration: BoxDecoration(color: Colors.amber),
          //           child: Text(
          //             'text $i',
          //             style: TextStyle(fontSize: 16.0),
          //           ),
          //         );
          //       },
          //     );
          //   }).toList(),
          // ),
        ],
      ),
    );
  }
}
