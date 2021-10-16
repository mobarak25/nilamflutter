import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/models/ProductData.dart';
import 'package:nilam/size_healper.dart';

class FeaturedProduct extends StatelessWidget {
  const FeaturedProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var featuredProduct = demoSiteProduct.sublist(0, 4);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: kWidth(context),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: kBorderColor),
            left: BorderSide(color: kBorderColor),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: kBorderColor,
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(1, 1),
            ),
          ],
        ),
        child: Wrap(
          children: [
            ...List.generate(
              featuredProduct.length,
              (index) => FractionallySizedBox(
                widthFactor: 0.5,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(color: kBorderColor),
                      bottom: BorderSide(color: kBorderColor),
                    ),
                  ),
                  child: Column(
                    children: [
                      AspectRatio(
                        aspectRatio: 1.6,
                        child: Image.asset(
                          demoSiteProduct[index].images[0],
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 7),
                      Text(
                        demoSiteProduct[index].title,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: kWidth(context) * 0.038,
                          color: Color(0XFF272B31),
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
