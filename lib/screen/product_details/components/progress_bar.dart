import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/size_healper.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> statusItem = [
      {
        "title": "Pending",
        "isConfirm": true,
      },
      {
        "title": "Confirmed",
        "isConfirm": false,
      },
      {
        "title": "Processing",
        "isConfirm": false,
      },
      {
        "title": "Delivered",
        "isConfirm": false,
      },
    ];
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kWidth(context) * 0.04),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...List.generate(
              statusItem.length,
              (index) => Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: (index == 0)
                                ? Colors.transparent
                                : statusItem[index]["isConfirm"] == true
                                    ? kBrandPrimaryColor
                                    : kBorderColor,
                            thickness: 4,
                          ),
                        ),
                        Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                            color: statusItem[index]["isConfirm"] == true ? kBrandPrimaryColor : kBorderColor,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: (index == statusItem.length - 1)
                                ? Colors.transparent
                                : statusItem[index]["isConfirm"] == true
                                    ? kBrandPrimaryColor
                                    : kBorderColor,
                            thickness: 4,
                          ),
                        ),
                      ],
                    ),
                    Text(statusItem[index]["title"])
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
