import 'package:flutter/material.dart';

class RadioExpand extends StatelessWidget {
  const RadioExpand({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {
        "name": "hasChild 1",
        "children": [
          {
            "name": "Ali 2a",
            "children": [
              {
                "name": "Ali 3",
                "children": [
                  {
                    "name": "Ali 4",
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
        "name": "hasChild 2",
        "children": [
          {
            "name": "Ali 2a",
            "children": [
              {
                "name": "Ali 3",
                "children": [
                  {
                    "name": "Ali 4",
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
        "name": "Other 1",
        "children": [],
      },
      {
        "name": "Other 2",
        "children": [],
      },
    ];

    return Column(
      children: [
        ...List.generate(
          categories.length,
          (parentIndex) {
            if (categories[parentIndex]["children"].length > 0) {
              return ExpansionPanelList.radio(
                children: [
                  ExpansionPanelRadio(
                    canTapOnHeader: true,
                    value: categories[parentIndex],
                    headerBuilder: (context, bool isExpanded) => Text(categories[parentIndex]["name"]),
                    body: Column(
                      children: [
                        Text("data"),
                      ],
                    ),
                  ),
                ],
              );
            } else {
              return Text(
                categories[parentIndex]["name"],
              );
            }
          },
        ),
      ],
    );
  }
}
