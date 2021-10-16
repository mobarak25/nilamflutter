import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/models/AuctionProductData.dart';
import 'package:nilam/size_healper.dart';

class FeatureAuctionProductCard extends StatelessWidget {
  final AuctionProduct auctionProduct;
  const FeatureAuctionProductCard({
    Key? key,
    required this.auctionProduct,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color(0xFFFAFAFA),
                      border: Border.all(
                        color: kBorderColor.withOpacity(0.5),
                      )),
                  width: kWidth(context) * 0.276,
                  child: AspectRatio(
                    aspectRatio: 1.2,
                    child: Image.asset(
                      auctionProduct.images[0],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 8),
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 3),
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: kGreenColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  auctionProduct.time,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Text.rich(TextSpan(
          text: "tk ",
          style: TextStyle(color: Colors.black, height: 1),
          children: [
            TextSpan(
              text: "${auctionProduct.lastbid}",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )),
        Text(
          auctionProduct.startingBid < auctionProduct.lastbid
              ? "Current Bid"
              : "Start Bid",
          style: TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
