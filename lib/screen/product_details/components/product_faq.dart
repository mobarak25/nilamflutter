import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/size_healper.dart';

class ProductFaq extends StatelessWidget {
  const ProductFaq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> faqList = [
      {
        "name": "Abdur Rahman",
        "time": "13 Nov 2020",
        "question": "Can I set the 3d wallpaper on my kitchen?",
        "ans": "yes sure, but this product would be nice to see if set the wallpaper on living room or bedroom.",
      },
      {
        "name": "Mominul Islam",
        "time": "32 Oct 2020",
        "question": "How much time you need to deliver this wallpaper?",
        "ans": "If you order? then we need 3-5 days for deliver.",
      },
    ];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Question and Answer (21)",
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
                  "Ask Questions",
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        ...List.generate(
          faqList.length,
          (index) => _buildRating(faqList, index),
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "View All Question and Answer (56)",
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

  SizedBox _buildRating(List<Map<String, dynamic>> faqList, int index) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(faqList[index]["name"]),
              Text(faqList[index]["time"]),
            ],
          ),
          SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Q.",
                style: TextStyle(
                  color: kBrandPrimaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                child: Text(
                  faqList[index]["question"],
                  style: TextStyle(
                    height: 1.5,
                    color: Color(0xFF272B31),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "A.",
                style: TextStyle(
                  color: kGreenColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                child: Text(
                  faqList[index]["ans"],
                  style: TextStyle(),
                ),
              )
            ],
          ),
          SizedBox(height: 15),
          Divider(height: 2, thickness: 1.5, color: kBorderColor.withOpacity(0.5)),
        ],
      ),
    );
  }
}
