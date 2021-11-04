import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nilam/components/default_button.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/screen/post_your_ad_form_1/post_your_ad_form_1.dart';
import 'package:nilam/screen/post_your_add/components/categories.dart';
import 'package:nilam/screen/post_your_add/components/custom_modal.dart';
import 'package:nilam/components/post_your_ad_banner.dart';
import 'package:nilam/components/selected_category.dart';
import 'package:nilam/screen/post_your_add/components/type_category.dart';
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
                SelectedCategory(
                  showEdit: false,
                ),
                SizedBox(height: 12),
                Container(
                  width: kWidth(context),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 9),
                  margin: EdgeInsets.symmetric(horizontal: kWidth(context) * 0.04),
                  color: kPrimaryColor,
                  child: Text(
                    "Select Category",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TypeCategory(),
                SizedBox(height: 15),
                Categories(),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: kWidth(context) * 0.04),
                  child: DefaultButton(
                    text: 'Continue',
                    press: () {
                      Navigator.pushNamed(context, PostYourAdFormOneScreen.routeName);
                    },
                  ),
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
          CousomModal()
        ],
      ),
    );
  }
}
