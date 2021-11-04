import 'package:flutter/material.dart';
import 'package:nilam/components/post_your_ad_banner.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/screen/post_your_ad_form_1/components/post_steps.dart';
import 'package:nilam/components/selected_category.dart';
import 'package:nilam/screen/post_your_ad_form_1/components/title_form.dart';
import 'package:nilam/size_healper.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PostYourAdBanner(),
          SizedBox(height: 8),
          PostSteps(),
          SizedBox(height: 23),
          SelectedCategory(),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kWidth(context) * 0.04),
            child: Divider(
              color: kBorderColor,
              thickness: 1,
            ),
          ),
          TitleForm(),
        ],
      ),
    );
  }
}
