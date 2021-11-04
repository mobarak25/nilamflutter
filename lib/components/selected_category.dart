import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/screen/post_your_add/post_your_ad_screen.dart';
import 'package:nilam/size_healper.dart';

class SelectedCategory extends StatelessWidget {
  final bool showEdit;
  const SelectedCategory({
    Key? key,
    this.showEdit = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List selectedCategory = ["Electronics", "Camera Accessories", "Camera"];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kWidth(context) * 0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Wrap(
              alignment: WrapAlignment.start,
              children: [
                Text(
                  "Selected Category: ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, height: 1),
                ),
                ...List.generate(
                  selectedCategory.length,
                  (index) => Text.rich(
                    TextSpan(
                      text: "Electronics",
                      style: TextStyle(color: kBrandPrimaryColor, fontSize: 15),
                      children: [
                        TextSpan(
                          text: (index == selectedCategory.length - 1) ? " " : " > ",
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: showEdit,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, PostYourAddScreen.routeName);
              },
              child: Text(
                "Edit",
                style: TextStyle(color: kBrandPrimaryColor, fontWeight: FontWeight.w500, decoration: TextDecoration.underline),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
