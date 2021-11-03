import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nilam/screen/post_your_add/components/categories.dart';
import 'package:nilam/screen/post_your_add/components/custom_modal.dart';
import 'package:nilam/screen/post_your_add/components/post_your_ad_banner.dart';
import 'package:nilam/size_healper.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kHeight(context),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                PostYourAdBanner(
                  isAllowance: true,
                ),
                SelectedCategory(),
                Categories(),
              ],
            ),
          ),
          CousomModal()
        ],
      ),
    );
  }
}

class SelectedCategory extends StatelessWidget {
  const SelectedCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kWidth(context),
      padding: EdgeInsets.symmetric(horizontal: kWidth(context) * 0.04),
      child: Wrap(
        alignment: WrapAlignment.start,
        children: [
          Text("Selected Category:"),
          Text("Selected Category:"),
          Text("Selected Category:"),
        ],
      ),
    );
  }
}
