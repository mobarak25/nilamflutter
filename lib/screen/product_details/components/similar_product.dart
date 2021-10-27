import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/size_healper.dart';

class SimilarProduct extends StatelessWidget {
  const SimilarProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> demoSimilarProduct = [
      {
        "title": "TARION Camera Backpack",
        "price": 400,
        "image": "assets/images/s_product_1.png",
      },
      {
        "title": "Rose Water for Face & Hair",
        "price": 400,
        "image": "assets/images/s_product_2.png",
      },
      {
        "title": "Victiv 72-inch Camera",
        "price": 400,
        "image": "assets/images/s_product_3.png",
      },
      {
        "title": "VEATOOL 5.0 Bluetooth",
        "price": 400,
        "image": "assets/images/s_product_4.png",
      },
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kWidth(context) * 0.04),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: kBorderColor),
            right: BorderSide(color: kBorderColor),
          ),
        ),
        child: Wrap(
          children: [
            ...List.generate(
              demoSimilarProduct.length,
              (index) => FractionallySizedBox(
                widthFactor: 0.5,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: kBorderColor),
                      left: BorderSide(color: kBorderColor),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(demoSimilarProduct[index]["image"]),
                      SizedBox(height: 8),
                      Text(
                        demoSimilarProduct[index]["title"],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "tk ${demoSimilarProduct[index]["price"]}",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: kBrandPrimaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
