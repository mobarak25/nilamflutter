import 'package:flutter/material.dart';
import 'package:nilam/components/flat_btn.dart';
import 'package:nilam/constants.dart';

class ProductDetailsBottomNavigationBar extends StatelessWidget {
  const ProductDetailsBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: kBorderColor.withOpacity(0.5),
            offset: Offset(0, -1),
            blurRadius: 7,
            spreadRadius: 1,
          ),
        ],
        color: kPrimaryColor,
      ),
      child: Row(
        children: [
          FlatBtn(
            text: 'Buy Now',
            bgColor: Colors.white,
            textColor: kTextColor,
            press: () {},
          ),
          FlatBtn(
            text: 'Add to Cart',
            press: () {},
          ),
        ],
      ),
    );
  }
}
