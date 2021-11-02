import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nilam/screen/post_your_add/components/categories.dart';
import 'package:nilam/screen/post_your_add/components/post_your_ad_banner.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostYourAdBanner(
          isAllowance: true,
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Categories(),
            ],
          ),
        ),
      ],
    );
  }
}
