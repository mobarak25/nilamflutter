import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/screen/product_details/components/body.dart';
import 'package:nilam/screen/product_details/components/product_details_bottom_navigation_bar.dart';

class ProductDetailsScreen extends StatelessWidget {
  static String routeName = "/product_details";
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Body(),
      bottomNavigationBar: ProductDetailsBottomNavigationBar(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(
        "Wallpeper",
        style: TextStyle(
          fontSize: 14,
          color: kTextColor,
        ),
      ),
    );
  }
}
