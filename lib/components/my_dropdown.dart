import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';
import 'package:nilam/size_healper.dart';

class MyDropdown extends StatefulWidget {
  final String hintText;

  MyDropdown({
    Key? key,
    required this.hintText,
  }) : super(key: key);
  @override
  _MyDropdownState createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  String? dropdownvalue;

  var items = [
    'Apple',
    'Banana',
    'Grapes',
    'Orange',
    'watermelon',
    'Pineapple'
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kWidth(context),
      child: DropdownButton(
        isExpanded: true,
        value: dropdownvalue,
        hint: Text(
          widget.hintText,
          style: TextStyle(color: kTextColor, fontSize: 15),
        ),
        icon: Icon(Icons.keyboard_arrow_down),
        items: items.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(items),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            dropdownvalue = newValue!;
          });
        },
      ),
    );
  }
}
