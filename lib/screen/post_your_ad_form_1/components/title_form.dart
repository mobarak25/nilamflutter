import 'package:flutter/material.dart';
import 'package:nilam/components/default_button.dart';
import 'package:nilam/components/my_dropdown.dart';
import 'package:nilam/screen/post_your_ad_form_1/components/product_condition.dart';
import 'package:nilam/size_healper.dart';

class TitleForm extends StatefulWidget {
  const TitleForm({Key? key}) : super(key: key);

  @override
  _TitleFormState createState() => _TitleFormState();
}

class _TitleFormState extends State<TitleForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kWidth(context) * 0.04),
      child: Form(
        child: Column(
          children: [
            ProductCondition(),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Ad Title*",
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Brand",
              ),
            ),
            SizedBox(height: 15),
            MyDropdown(
              hintText: "Stock Nature",
            ),
            SizedBox(height: 15),
            MyDropdown(
              hintText: "Stock Type",
            ),
            SizedBox(height: 15),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Product Quantity",
              ),
            ),
            SizedBox(height: 50),
            DefaultButton(
              text: "Next",
              press: () {},
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
