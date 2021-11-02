import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/size_healper.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {
        "name": "Essentials",
        "icon": "assets/images/essentials.png",
        "children": [
          {
            "name": "Desktop Computers",
            "children": [
              {
                "name": "Fast Prime Lens",
                "children": [
                  {
                    "name": "Ali 4a",
                    "children": [],
                  },
                  {
                    "name": "Ali 4b",
                    "children": [],
                  },
                ],
              },
              {
                "name": "Tripod",
                "children": [
                  {
                    "name": "Ali 4a",
                    "children": [],
                  },
                  {
                    "name": "Ali 4b",
                    "children": [],
                  },
                ],
              },
            ],
          },
          {
            "name": "Laptops",
            "children": [],
          },
          {
            "name": "Computer Accessories",
            "children": [],
          },
        ],
      },
      {
        "name": "Mobiles",
        "icon": "assets/images/mobiles.png",
        "children": [
          {
            "name": "Ali 2a",
            "children": [
              {
                "name": "Ali 3a",
                "children": [
                  {
                    "name": "Ali 4a",
                    "children": [],
                  },
                  {
                    "name": "Ali 4b",
                    "children": [],
                  },
                ],
              },
              {
                "name": "Ali 3b",
                "children": [
                  {
                    "name": "Ali 4a",
                    "children": [],
                  },
                  {
                    "name": "Ali 4b",
                    "children": [],
                  },
                ],
              },
            ],
          },
          {
            "name": "Ali 2b",
            "children": [],
          },
          {
            "name": "Ali 2c",
            "children": [],
          },
        ],
      },
      {
        "name": "Electronics",
        "icon": "assets/images/electronics.png",
        "children": [],
      },
      {
        "name": "Vehicles",
        "icon": "assets/images/vehicles.png",
        "children": [],
      },
      {
        "name": "Property",
        "icon": "assets/images/property.png",
        "children": [],
      },
      {
        "name": "Services",
        "icon": "assets/images/services.png",
        "children": [],
      },
      {
        "name": "Home & Living",
        "icon": "assets/images/home_and_living.png",
        "children": [],
      },
      {
        "name": "Fashion & Beauty",
        "icon": "assets/images/fashion_and_beauty.png",
        "children": [],
      },
      {
        "name": "Hobbies, Sports & Kids",
        "icon": "assets/images/hobbies.png",
        "children": [],
      },
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kWidth(context) * 0.04),
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          ...List.generate(
            categories.length,
            (parenIndex) {
              if (categories[parenIndex]["children"].isEmpty) {
                return childCat(categories, parenIndex);
              } else {
                return parentCat(categories, parenIndex);
              }
            },
          )
        ],
      ),
    );
  }

  Container childCat(List<Map<String, dynamic>> categories, int parenIndex) {
    String category = categories[parenIndex]["name"];
    String icons = categories[parenIndex]["icon"];

    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: kBorderColor),
        ),
      ),
      child: ListTile(
        dense: true,
        contentPadding: EdgeInsets.all(0),
        title: Row(
          children: [
            Image.asset(icons, width: 24, height: 24),
            SizedBox(width: 10),
            Text(category, style: TextStyle(fontSize: 16, fontFamily: "Poppins")),
          ],
        ),
      ),
    );
  }

  Container parentCat(List<Map<String, dynamic>> categories, int parenIndex) {
    final theme = ThemeData(dividerColor: Colors.transparent);
    String category = categories[parenIndex]["name"];
    String icons = categories[parenIndex]["icon"];
    List firstSub = categories[parenIndex]["children"]; //First sub

    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: kBorderColor),
        ),
      ),
      child: ListTileTheme(
        dense: true,
        child: Theme(
          data: theme,
          child: ExpansionTile(
            tilePadding: EdgeInsets.all(0),
            childrenPadding: EdgeInsets.all(0),
            iconColor: kBrandPrimaryColor,
            textColor: kBrandPrimaryColor,
            title: Row(
              children: [
                Image.asset(icons, width: 24, height: 24),
                SizedBox(width: 10),
                Text(category, style: TextStyle(fontSize: 16, fontFamily: "Poppins")),
              ],
            ),
            children: [
              ...List.generate(
                firstSub.length,
                (firstSubIndex) {
                  //
                  String firstSubName = firstSub[firstSubIndex]["name"];
                  List secondSub = firstSub[firstSubIndex]["children"];

                  if (secondSub.isEmpty) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: ListTile(
                        title: Text(firstSubName),
                      ),
                    );
                  } else {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: ExpansionTile(
                        iconColor: kBrandPrimaryColor,
                        textColor: kBrandPrimaryColor,
                        title: Text(firstSubName),
                        children: [
                          ...List.generate(
                            secondSub.length,
                            (secondSubIndex) {
                              String secondSubName = secondSub[secondSubIndex]["name"];
                              List thirdSub = secondSub[secondSubIndex]["children"];
                              if (thirdSub.isEmpty) {
                                return Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: ListTile(
                                    title: Text(secondSubName),
                                  ),
                                );
                              } else {
                                return Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: ExpansionTile(
                                    iconColor: kBrandPrimaryColor,
                                    textColor: kBrandPrimaryColor,
                                    title: Text(secondSubName),
                                    children: [
                                      ...List.generate(
                                        thirdSub.length,
                                        (thirdSubIndex) {
                                          String thirdSubName = thirdSub[thirdSubIndex]["name"];
                                          return Container(
                                            padding: EdgeInsets.symmetric(horizontal: 15),
                                            child: ListTile(
                                              title: Row(
                                                children: [
                                                  Icon(
                                                    Icons.chevron_right,
                                                    size: 17,
                                                    color: Color(0xFF4D4848),
                                                  ),
                                                  Text(thirdSubName),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                );
                              }
                            },
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
