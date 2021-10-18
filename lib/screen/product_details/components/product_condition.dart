import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';

class ProductCondition extends StatelessWidget {
  const ProductCondition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(color: kGreenColor.withOpacity(0.22), borderRadius: BorderRadius.circular(5)),
              child: Text(
                "New",
                style: TextStyle(
                  fontSize: 12,
                  color: kGreenColor,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(width: 5),
            Text(
              "20pcs Lot",
              style: TextStyle(
                fontSize: 11,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "Home delivery Available",
              style: TextStyle(
                fontSize: 11,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        )
      ],
    );
  }
}
