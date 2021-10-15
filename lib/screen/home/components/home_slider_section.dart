import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/models/HomeSliderData.dart';

class HomeSliderSection extends StatefulWidget {
  const HomeSliderSection({Key? key}) : super(key: key);

  @override
  _HomeSliderSectionState createState() => _HomeSliderSectionState();
}

class _HomeSliderSectionState extends State<HomeSliderSection> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              CarouselSlider.builder(
                itemCount: demoHomeSlider.length,
                options: CarouselOptions(
                  height: 170.0,
                  autoPlay: true,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentPage = index;
                    });
                  },
                ),
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Container(
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 170,
                            child: Image.asset(demoHomeSlider[itemIndex].images,
                                fit: BoxFit.cover),
                          ),
                        ],
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        // color: Colors.black,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              demoHomeSlider[itemIndex].biddingStatus,
                              style: TextStyle(color: kPrimaryColor),
                            ),
                            SizedBox(height: 7),
                            Text(
                              demoHomeSlider[itemIndex].title,
                              style: TextStyle(
                                height: 1.1,
                                fontSize: 17,
                                fontFamily: "Poppins",
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                  color: kBrandPrimaryColor,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text.rich(
                                TextSpan(
                                  text: "Current Bid: ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          "tk ${demoHomeSlider[itemIndex].bidPrice}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text.rich(
                              TextSpan(
                                text: "Time Left: ",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Poppins",
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(
                                    text: "${demoHomeSlider[itemIndex].time}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 15,
                        bottom: 10,
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            demoHomeSlider[itemIndex].btnText,
                            style: TextStyle(
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 5,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                demoHomeSlider.length,
                (index) => buildDot(index: index),
              ),
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 8,
      width: currentPage == index ? 25 : 8,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFD5D5D5),
        ),
        color:
            currentPage == index ? Colors.white : Colors.white.withOpacity(0.6),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              color:
                  currentPage == index ? Color(0xFF0ABB87) : Colors.transparent,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
