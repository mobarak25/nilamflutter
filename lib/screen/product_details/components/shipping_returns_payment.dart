import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/size_healper.dart';

class ShippingReturnsPayment extends StatelessWidget {
  const ShippingReturnsPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Shipping, Returns & Payment",
          style: TextStyle(
            color: Color(0XFF272B31),
            fontSize: kWidth(context) * 0.045,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 18),
        InkWell(
          onTap: () {},
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kGreenColor.withOpacity(0.15),
                ),
                child: Icon(
                  Icons.local_shipping,
                  color: kGreenColor,
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Address",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: kWidth(context) * 0.038,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Stack(
                      fit: StackFit.loose,
                      children: [
                        FractionallySizedBox(
                          widthFactor: 1,
                          child: Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text(
                              "Please sign in to show your shipping add- ress or add location",
                              style: TextStyle(
                                height: 1.3,
                                fontSize: 13,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: Icon(
                            Icons.keyboard_arrow_right,
                            size: 20,
                            color: kTextColor,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        InkWell(
          onTap: () {},
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kGreenColor.withOpacity(0.15),
                ),
                child: Icon(
                  Icons.swap_horiz,
                  color: kGreenColor,
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Warreanty",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: kWidth(context) * 0.038,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Stack(
                      fit: StackFit.loose,
                      children: [
                        FractionallySizedBox(
                          widthFactor: 1,
                          child: Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text(
                              "7 Days replacement warranty  ",
                              style: TextStyle(
                                height: 1.3,
                                fontSize: 13,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: Icon(
                            Icons.keyboard_arrow_right,
                            size: 20,
                            color: kTextColor,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        InkWell(
          onTap: () {},
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kGreenColor.withOpacity(0.15),
                ),
                child: Icon(
                  Icons.local_shipping,
                  color: kGreenColor,
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivery",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: kWidth(context) * 0.038,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Stack(
                      fit: StackFit.loose,
                      children: [
                        FractionallySizedBox(
                          widthFactor: 1,
                          child: Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text(
                              "Home Delivery, 3 - 5 Days (tk 50)",
                              style: TextStyle(
                                height: 1.3,
                                fontSize: 13,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: Icon(
                            Icons.keyboard_arrow_right,
                            size: 20,
                            color: kTextColor,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        GestureDetector(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kGreenColor.withOpacity(0.15),
                ),
                child: Icon(
                  Icons.payment,
                  color: kGreenColor,
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Payment",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: kWidth(context) * 0.038,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Image.asset("assets/images/online_payment.png"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
