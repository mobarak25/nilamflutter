import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/screen/post_your_ad_form_1/components/body.dart';

class PostYourAdFormOneScreen extends StatelessWidget {
  static String routeName = "/post_your_ad_form_one";
  const PostYourAdFormOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Icon(Icons.chevron_left, size: 30),
      ),
      title: Text(
        "Post Your Ad",
        style: TextStyle(color: kTextColor, fontSize: 18),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: () {},
        ),
      ],
    );
  }
}
