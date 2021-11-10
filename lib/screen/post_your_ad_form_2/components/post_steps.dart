import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/size_healper.dart';

class PostSteps extends StatelessWidget {
  const PostSteps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> steps = [
      {
        "title": "Ad Titels",
        "isConfirm": true,
      },
      {
        "title": "Photos",
        "isConfirm": true,
      },
      {
        "title": "Price",
        "isConfirm": false,
      },
      {
        "title": "Location",
        "isConfirm": false,
      },
    ];
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      margin: EdgeInsets.symmetric(horizontal: kWidth(context) * 0.04),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: kBorderColor.withOpacity(0.7),
            offset: Offset(0, 2),
            blurRadius: 3,
            spreadRadius: 3,
          ),
        ],
      ),
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kWidth(context) * 0.04),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...List.generate(
              steps.length,
              (index) => Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: (index == 0)
                                ? Colors.transparent
                                : steps[index]["isConfirm"] == true
                                    ? kGreenColor
                                    : kBorderColor,
                            thickness: 4,
                          ),
                        ),
                        Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            color: steps[index]["isConfirm"] == true ? kGreenColor : Colors.white,
                            border: Border.all(
                              color: kGreenColor,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              "${index + 1}",
                              style: TextStyle(
                                color: steps[index]["isConfirm"] == true ? Colors.white : kTextColor,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: (index == steps.length - 1)
                                ? Colors.transparent
                                : steps[index]["isConfirm"] == true
                                    ? kGreenColor
                                    : kBorderColor,
                            thickness: 4,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      steps[index]["title"],
                      style: TextStyle(height: 1.5),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
