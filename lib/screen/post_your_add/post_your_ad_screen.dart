import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';

class PostYourAddScreen extends StatelessWidget {
  static String routeName = "/post_your_add";
  const PostYourAddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
    );
  }
}
