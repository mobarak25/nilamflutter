import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';

class Description extends StatefulWidget {
  const Description({Key? key}) : super(key: key);
  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
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
