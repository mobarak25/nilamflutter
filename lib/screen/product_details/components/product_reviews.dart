import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/size_healper.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> reviewProduct = [
      {
        "name": "Abdur Rahman",
        "time": "13 Nov 2020",
        "rating": 4.7,
        "title": "Great Products",
        "text": "This is great products, packaging is also good and awesome fit my living room wall with this wallpaper.",
      },
      {
        "name": "Mominul Islam",
        "time": "32 Oct 2020",
        "rating": 4.3,
        "title": "I like this",
        "text": "Like this product with price",
      },
      {
        "name": "Md. Mobarak Ali",
        "time": "12 Nov 2020",
        "rating": 5,
        "title": "A nice simple Products",
        "text": "A simple yet fully customizable rating bar for flutter which also include a rating bar indicator, supporting any fraction of rating.",
      },
    ];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Product Reviews (31)",
              style: TextStyle(
                color: Color(0XFF272B31),
                fontSize: kWidth(context) * 0.045,
                fontWeight: FontWeight.w500,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: kGreenColor),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  "Wright Review",
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text("4.8 / 5"),
            SizedBox(width: 5),
            RatingBar.builder(
              initialRating: 4.5,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 18,
              unratedColor: Colors.amber.withOpacity(0.5),
              itemPadding: EdgeInsets.symmetric(horizontal: 0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: kBrandPrimaryColor,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ],
        ),
        SizedBox(height: 10),
        ...List.generate(
          reviewProduct.length,
          (index) => _buildRating(reviewProduct, index),
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "All reviews (61)",
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.w500,
                fontSize: kWidth(context) * 0.04,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_right,
              color: kTextColor,
            ),
          ],
        ),
        SizedBox(height: 5),
        Divider(height: 2, thickness: 1.5, color: kBorderColor),
      ],
    );
  }

  SizedBox _buildRating(List<Map<String, dynamic>> reviewProduct, int index) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(reviewProduct[index]["name"]),
              Text(reviewProduct[index]["time"]),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 1,
                ),
                decoration: BoxDecoration(color: Color(0XFFFEF1DF), borderRadius: BorderRadius.circular(4)),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 16,
                      color: kBrandPrimaryColor,
                    ),
                    Text(
                      "${reviewProduct[index]["rating"]}",
                      style: TextStyle(
                        color: kBrandPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 5),
              Text(
                reviewProduct[index]["title"],
                style: TextStyle(
                  color: Color(0xFF272B31),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            reviewProduct[index]["text"],
            style: TextStyle(color: kSecondaryColor),
          ),
          SizedBox(height: 15),
          Divider(height: 2, thickness: 1.5, color: kBorderColor.withOpacity(0.5)),
        ],
      ),
    );
  }
}
