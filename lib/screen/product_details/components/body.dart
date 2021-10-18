import 'package:flutter/material.dart';
import 'package:nilam/screen/product_details/components/product_condition.dart';
import 'package:nilam/screen/product_details/components/product_images.dart';
import 'package:nilam/size_healper.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kWidth(context) * 0.05),
            child: Column(
              children: [
                ProductCondition(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
