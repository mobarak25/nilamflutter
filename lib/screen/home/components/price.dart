import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';

class Price extends StatelessWidget {
  final double price;
  final double lastBid;
  final double startingBid;
  final bool isAuction;
  const Price({
    Key? key,
    required this.price,
    required this.isAuction,
    required this.lastBid,
    required this.startingBid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        isAuction
            ? Row(
                children: [
                  Text.rich(
                    TextSpan(
                      text: "tk ",
                      style: TextStyle(
                        fontSize: 14,
                        color: kBrandPrimaryColor,
                      ),
                      children: [
                        TextSpan(
                          text: "$lastBid",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  lastBid > startingBid
                      ? Text(
                          " Last Bid",
                          style: TextStyle(fontSize: 12),
                        )
                      : Text(
                          " Current Bid",
                          style: TextStyle(fontSize: 12),
                        )
                ],
              )
            : Text.rich(
                TextSpan(
                  text: "tk ",
                  style: TextStyle(
                    fontSize: 12,
                    color: kBrandPrimaryColor,
                  ),
                  children: [
                    TextSpan(
                      text: "$price",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
      ],
    );
  }
}
