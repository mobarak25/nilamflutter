import 'package:flutter/material.dart';
import 'package:nilam/size_healper.dart';

class PostYourAdBanner extends StatelessWidget {
  final String title, allowanceTitle;
  final int allowanceNumber;
  final bool isAllowance;
  const PostYourAdBanner({
    Key? key,
    this.title = "Create your free ad post",
    this.allowanceTitle = "Your free posting allowance total:",
    this.allowanceNumber = 100,
    this.isAllowance = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: kHeight(context) * 0.155,
          width: kWidth(context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            image: DecorationImage(
              image: ExactAssetImage(
                "assets/images/post_add.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    if (isAllowance)
                      Text.rich(
                        TextSpan(
                          text: allowanceTitle,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                          children: [
                            TextSpan(
                              text: allowanceNumber.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                  ],
                ),
              ),
              Container(height: 20),
            ],
          ),
        ),
        Positioned(
          bottom: -1,
          left: 0,
          right: 0,
          child: Container(
            height: 20,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
          ),
        )
      ],
    );
  }
}
