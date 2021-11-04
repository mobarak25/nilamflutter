import 'package:flutter/material.dart';
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
                hintText: "Ad Title*",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
