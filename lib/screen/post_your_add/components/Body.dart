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

    return SingleChildScrollView(
      child: ExpansionPanelList.radio(
        children: categories
            .map(
              (cat) => ExpansionPanelRadio(
                value: cat["name"],
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text(cat["name"]),
                  );
                },
                body: Column(
                  children: [
                    ListTile(
                      title: Text(cat["name"]),
                    )
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
