import 'package:flutter/material.dart';
import 'package:nilam/components/post_your_ad_banner.dart';
import 'package:nilam/components/selected_category.dart';
import 'package:nilam/screen/post_your_ad_form_2/components/image_form.dart';
import 'package:nilam/screen/post_your_ad_form_2/components/post_steps.dart';

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
          SizedBox(height: 20),
          SelectedCategory(),
          SizedBox(height: 25),
          ImageForm(),
        ],
      ),
    );
  }
}
