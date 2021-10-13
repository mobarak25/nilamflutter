import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/screen/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home_screen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buldAppBar(),
      body: Body(),
    );
  }

  AppBar buldAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      leading: Icon(
        Icons.menu,
        size: 26,
        color: Colors.white,
      ),
      title: Container(
        width: 130,
        child: Image.asset("assets/images/logo.png"),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: EdgeInsets.all(5),
          child: Icon(Icons.favorite_border_outlined, color: Colors.white),
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: Icon(Icons.more_vert, color: Colors.white),
        ),
      ],
    );
  }
}
