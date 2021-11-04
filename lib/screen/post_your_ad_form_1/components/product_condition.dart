import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';

class ProductCondition extends StatefulWidget {
  const ProductCondition({Key? key}) : super(key: key);

  @override
  _ProductConditionState createState() => _ProductConditionState();
}

class _ProductConditionState extends State<ProductCondition> {
  int _radioGroupValue = -1;

  void changeRadioSelection(int value) {
    setState(() {
      _radioGroupValue = value;
      //print('Radio butto selected: $value');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Condition: ",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        InkWell(
          onTap: () => changeRadioSelection(1),
          child: Row(
            children: [
              Radio(
                value: 1,
                groupValue: _radioGroupValue,
                onChanged: (int? value) {
                  changeRadioSelection(value!);
                },
                activeColor: kBrandPrimaryColor,
              ),
              Text('New', style: TextStyle(fontSize: 15))
            ],
          ),
        ),
        InkWell(
          onTap: () => changeRadioSelection(2),
          child: Row(
            children: [
              Radio(
                value: 2,
                groupValue: _radioGroupValue,
                onChanged: (int? value) {
                  changeRadioSelection(value!);
                },
                activeColor: kBrandPrimaryColor,
              ),
              Text('Used', style: TextStyle(fontSize: 15))
            ],
          ),
        ),
      ],
    );
  }
}
