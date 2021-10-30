import 'package:flutter/material.dart';

import 'package:nilam/screen/post_your_add/components/post_your_ad_banner.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isExpanded = false;
    List categories = [
      {
        "title": "Category1",
        "children": [],
      },
      {
        "title": "Category 2",
        "children": [
          {
            "title": "Nested Category 1",
            "children": [],
          },
          {
            "title": "Nested Category 2",
            "children": [
              {
                "title": "Nested Nested Category 1",
                "children": [
                  {
                    "title": "Nested Nested Nested Category 1",
                  },
                ],
              },
              {
                "title": "Nested Nested Category 1",
                "children": [
                  {
                    "title": "Nested Nested Nested Category 2",
                  },
                ],
              },
            ],
          },
          {
            "title": "Nested Category 3",
            "children": [],
          },
        ],
      },
      {
        "title": "Category 3",
        "children": [],
      },
    ];

    return Column(
      children: [
        PostYourAdBanner(
          isAllowance: true,
        ),
        ExpansionPanelList.radio(
          children: [
            ...List.generate(
              categories.length,
              (index) => ExpansionPanelRadio(
                value: index,
                canTapOnHeader: true,
                headerBuilder: (context, bool isExpanded) => ListTile(
                  title: Text(categories[index]["title"]),
                ),
                body: Column(
                  children: [
                    Text("data 1"),
                    Text("data 1"),
                    Text("data 1"),
                    Text("data 1"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
