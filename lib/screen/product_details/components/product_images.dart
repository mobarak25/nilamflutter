import 'package:flutter/material.dart';
import 'package:nilam/components/icon_btn.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/size_healper.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({Key? key}) : super(key: key);

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int currentPage = 0;
  List<Map<String, String>> imagesData = [
    {
      "text": "Welcome to tokoto, Let's shop!",
      "image": "assets/images/product_5.png",
    },
    {
      "text": "We help people contact with store \n around United State of America",
      "image": "assets/images/product_6.png",
    },
    {
      "text": "We show the easy way to shop. \n Just stay at home with us",
      "image": "assets/images/product_7.png",
    },
    {
      "text": "We show the easy way to shop. \n Just stay at home with us",
      "image": "assets/images/product_8.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: Container(
            height: kHeight(context) * 0.4,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(
                  () {
                    currentPage = value;
                  },
                );
              },
              itemCount: imagesData.length,
              itemBuilder: (contex, index) => Image.asset(
                "${imagesData[index]["image"]}",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 15,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 22,
          right: 0,
          left: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0XFF949494).withOpacity(0.6),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    imagesData.length,
                    (index) => _dotBuilder(index),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 10,
          top: 5,
          child: Column(
            children: [
              IconBtn(
                icon: Icons.favorite_border,
                press: () {},
              ),
              IconBtn(
                icon: Icons.share,
                press: () {},
              ),
            ],
          ),
        )
      ],
    );
  }

  AnimatedContainer _dotBuilder(int? index) {
    return AnimatedContainer(
      alignment: Alignment.centerRight,
      duration: kAnimationDuration,
      width: currentPage == index ? 25 : 8,
      height: 8,
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(
          color: currentPage == index ? kBrandPrimaryColor : Colors.transparent,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
