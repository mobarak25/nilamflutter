import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';

class HomeBottomNavogation extends StatelessWidget {
  const HomeBottomNavogation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 12,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 8, bottom: 7),
                      color: kPrimaryColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            child: Column(
                              children: [
                                Icon(
                                  Icons.home,
                                  color: Colors.white,
                                  size: 22,
                                ),
                                Text(
                                  "Home",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            child: Column(
                              children: [
                                Icon(
                                  Icons.gavel,
                                  color: kTextColor,
                                  size: 22,
                                ),
                                Text(
                                  "My Auction",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color(0XFF8F949E),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 65,
                          ),
                          GestureDetector(
                            child: Column(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Icon(
                                      Icons.notifications,
                                      color: kTextColor,
                                      size: 22,
                                    ),
                                    Positioned(
                                      right: -7,
                                      top: -5,
                                      child: Container(
                                        width: 18,
                                        height: 18,
                                        decoration: BoxDecoration(
                                          color: kBrandPrimaryColor,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: kPrimaryColor,
                                            width: 2,
                                          ),
                                        ),
                                        child: Text(
                                          "10",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 8,
                                            height: 1.5,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Notifications",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color(0XFF8F949E),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            child: Column(
                              children: [
                                Icon(
                                  Icons.person,
                                  color: kTextColor,
                                  size: 22,
                                ),
                                Text(
                                  "Profile",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color(0XFF8F949E),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Align(
                  // left: (kWidth(context) * 0.5) - 60,
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 62,
                    height: 62,
                    decoration: BoxDecoration(
                      color: Color(0XFF404551),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.add,
                      size: 38,
                      color: kBrandPrimaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
