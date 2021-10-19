import 'package:flutter/material.dart';
import 'package:nilam/components/my_tooltip.dart';
import 'package:nilam/constants.dart';

class ProductCondition extends StatelessWidget {
  final String condition, text, tooltipMessage;
  final Color color;
  const ProductCondition({
    Key? key,
    required this.condition,
    required this.text,
    this.color = kGreenColor,
    this.tooltipMessage = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: color.withOpacity(0.22),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                condition,
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
                fontSize: 12,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 12,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            ),
            MyTooltip(
              message: tooltipMessage,
              child: Icon(
                Icons.error_outline,
                size: 20,
                color: kTextColor,
              ),
            ),
          ],
        )
      ],
    );
  }
}
