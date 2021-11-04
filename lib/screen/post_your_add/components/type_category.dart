import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';

class TypeCategory extends StatefulWidget {
  const TypeCategory({Key? key}) : super(key: key);

  @override
  _TypeCategoryState createState() => _TypeCategoryState();
}

class _TypeCategoryState extends State<TypeCategory> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        height: 48,
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kBorderColor,
          ),
        ),
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            contentPadding: EdgeInsets.only(left: 5, bottom: 5, right: 15),
            hintText: "Type your product category...",
          ),
        ),
      ),
    );
  }
}
