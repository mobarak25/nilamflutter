import 'package:flutter/material.dart';
import 'package:nilam/components/my_breadcrumb.dart';
import 'package:nilam/components/section_title.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/screen/product_details/components/description.dart';
import 'package:nilam/screen/product_details/components/details_item.dart';
import 'package:nilam/screen/product_details/components/product_condition.dart';
import 'package:nilam/screen/product_details/components/product_faq.dart';
import 'package:nilam/screen/product_details/components/product_images.dart';
import 'package:nilam/screen/product_details/components/product_reviews.dart';
import 'package:nilam/screen/product_details/components/progress_bar.dart';
import 'package:nilam/screen/product_details/components/shipping_returns_payment.dart';
import 'package:nilam/screen/product_details/components/similar_product.dart';
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
            padding: EdgeInsets.symmetric(horizontal: kWidth(context) * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductCondition(
                  condition: 'New',
                  text: 'Home delivery Available',
                  tooltipMessage: "This is tooltip message",
                ),
                SizedBox(height: 5),
                Mybreadcrumb(),
                SizedBox(height: 13),
                Text(
                  "3d wallpaper for living room with size 60\"x48\"",
                  style: TextStyle(
                    height: 1.2,
                    fontSize: kWidth(context) * 0.06,
                    color: kPrimaryColor,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 5),
                Text.rich(
                  TextSpan(
                    text: "Price: ",
                    style: TextStyle(color: kPrimaryColor),
                    children: [
                      TextSpan(
                        text: "tk 500",
                        style: TextStyle(
                            color: kGreenColor,
                            fontWeight: FontWeight.bold,
                            fontSize: kWidth(context) * 0.06),
                      ),
                      TextSpan(
                        text: " + tk65 shipping",
                        style: TextStyle(color: kTextColor),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 3),
                Text.rich(
                  TextSpan(
                    text: "Product ID:",
                    style: TextStyle(color: kPrimaryColor),
                    children: [
                      TextSpan(
                        text: " LP564213",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Divider(
                  height: 2,
                  thickness: 1.5,
                  color: kBorderColor,
                ),
                SizedBox(height: 20),
                Text(
                  "Product details",
                  style: TextStyle(
                    height: 1.2,
                    fontSize: kWidth(context) * 0.045,
                    color: Color(0XFF272B31),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 10),
                DetailsItem(title: "Brand:", value: "None Brand"),
                DetailsItem(title: "Materials:", value: "Plastic Materials"),
                DetailsItem(title: "Size:", value: '60"x48"'),
                DetailsItem(title: "Color:", value: "Blue & Pink"),
                DetailsItem(title: "Uses:", value: "Living Room, Office Room"),
                SizedBox(height: 15),
                Divider(height: 2, thickness: 1.5, color: kBorderColor),
                SizedBox(height: 15),
                SizedBox(height: 15),
                Description(),
                SizedBox(height: 15),
                Divider(height: 2, thickness: 1.5, color: kBorderColor),
                SizedBox(height: 15),
                ShippingReturnsPayment(),
                SizedBox(height: 15),
                Divider(height: 2, thickness: 1.5, color: kBorderColor),
                SizedBox(height: 15),
                ProductReviews(),
                SizedBox(height: 15),
                ProductFaq(),
                SizedBox(height: 15),
              ],
            ),
          ),
          SectionTitle(
            text: "Similar Products",
            press: () {},
          ),
          SizedBox(height: 15),
          SimilarProduct(),
          SizedBox(height: 30),
          ProgressBar(),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
