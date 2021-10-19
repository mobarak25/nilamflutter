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
            padding: EdgeInsets.symmetric(horizontal: kWidth(context) * 0.05),
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
                        style: TextStyle(color: kGreenColor, fontWeight: FontWeight.bold, fontSize: kWidth(context) * 0.06),
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
                ExpandExample(),
                SizedBox(height: 300),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ExpandExample extends StatefulWidget {
  @override
  _ExpandExampleState createState() => _ExpandExampleState();
}

class _ExpandExampleState extends State<ExpandExample> {
  ///If the box is expanded
  bool _isExpanded = false;

  ///Toogle the box to expand or collapse
  void _toogleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: GestureDetector(
              onTap: _toogleExpand,
              child: Container(
                padding: EdgeInsets.all(25.0),
                width: double.infinity,
                child: Text('Click me to ' + (_isExpanded ? 'collapse' : 'expand')),
              ),
            ),
          ),
          ExpandedSection(
            expand: _isExpanded,
            child: Container(
              width: double.infinity,
              color: Colors.red,
              padding: EdgeInsets.all(25.0),
              child: Text('Hello there'),
            ),
          )
        ],
      ),
    );
  }
}

class ExpandedSection extends StatefulWidget {
  final Widget child;
  final bool expand;
  ExpandedSection({
    this.expand = false,
    required this.child,
  });

  @override
  _ExpandedSectionState createState() => _ExpandedSectionState();
}

class _ExpandedSectionState extends State<ExpandedSection> with SingleTickerProviderStateMixin {
  late AnimationController expandController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    prepareAnimations();
  }

  ///Setting up the animation
  void prepareAnimations() {
    expandController = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    Animation<double> curve = CurvedAnimation(
      parent: expandController,
      curve: Curves.fastOutSlowIn,
    );
    animation = Tween(begin: 0.0, end: 1.0).animate(curve)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void didUpdateWidget(ExpandedSection oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.expand) {
      expandController.forward();
    } else {
      expandController.reverse();
    }
  }

  @override
  void dispose() {
    expandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      axisAlignment: 1.0,
      sizeFactor: animation,
      child: widget.child,
    );
  }
}
