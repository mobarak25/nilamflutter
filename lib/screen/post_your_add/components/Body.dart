import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nilam/screen/post_your_add/components/categories.dart';
import 'package:nilam/screen/post_your_add/components/post_your_ad_banner.dart';
import 'package:nilam/size_healper.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isOpenStatusModal = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kHeight(context),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                PostYourAdBanner(
                  isAllowance: true,
                ),
                Column(
                  children: [
                    Categories(),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Visibility(
              visible: isOpenStatusModal,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                ),
                child: Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: kWidth(context),
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 13),
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 2,
                            color: Color(0xFF4CAF50),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFF4CAF50).withOpacity(0.2),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.check_circle,
                                size: 28,
                                color: Color(0xFF4CAF50),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                "Your order is delivered successfully.Your order is delivered successfully.Your order is delivered successfully.Your order is delivered successfully.",
                                style: TextStyle(
                                  color: Color(0xFF4CAF50),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 10,
                        top: -8,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isOpenStatusModal = !isOpenStatusModal;
                            });
                          },
                          child: Container(
                            width: 23,
                            height: 23,
                            decoration: BoxDecoration(
                              color: Color(0xFF4CAF50),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.close_sharp,
                              size: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
