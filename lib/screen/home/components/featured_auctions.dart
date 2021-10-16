import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/models/AuctionProductData.dart';
import 'package:nilam/screen/home/components/feature_auction_product_card.dart';
import 'package:nilam/size_healper.dart';

class FeaturedAuctions extends StatelessWidget {
  const FeaturedAuctions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: kWidth(context),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: kBorderColor,
          ),
          boxShadow: [
            BoxShadow(
              color: kBorderColor,
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(1, 1),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(
              demoAuctionProduct.length,
              (index) => FeatureAuctionProductCard(
                  auctionProduct: demoAuctionProduct[index]),
            )
          ],
        ),
      ),
    );
  }
}
