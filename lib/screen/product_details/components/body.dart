import 'package:flutter/material.dart';
import 'package:nilam/components/my_breadcrumb.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/screen/product_details/components/details_item.dart';
import 'package:nilam/screen/product_details/components/product_condition.dart';
import 'package:nilam/screen/product_details/components/product_images.dart';
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
                Divider(
                  height: 2,
                  thickness: 1.5,
                  color: kBorderColor,
                ),
                SizedBox(height: 15),
                SizedBox(height: 15),
                MyHomePage(),
                SizedBox(height: 15),
                Divider(
                  height: 2,
                  thickness: 1.5,
                  color: kBorderColor,
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isReadmore = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "An item that has been restored to working order by the eBay seller or a third party not approved by the manufacturer. This means the item has been inspected, cleaned, and repaired to full working order and is in excellent condition. This item may or may not be in original packaging specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of",
          style: TextStyle(fontSize: 14),
          maxLines: isReadmore ? null : 4,
          // overflow properties is used to show 3 dot in text widget
          // so that user can understand there are few more line to read.
          overflow: isReadmore ? TextOverflow.visible : TextOverflow.ellipsis,
        ),
        Container(
          height: isReadmore ? null : 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/bedroom.png"),
              SizedBox(height: 5),
              Text("Bedroom"),
              SizedBox(height: 10),
              Image.asset("assets/images/living_room.png"),
              SizedBox(height: 5),
              Text("living room"),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    // toggle the bool variable true or false
                    isReadmore = !isReadmore;
                  });
                },
                child: Text(
                  (isReadmore ? 'CLOSE DESCRIPTION' : 'FULL DESCRIPTION'),
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    height: 2,
                    fontSize: 14,
                    color: kGreenColor,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
