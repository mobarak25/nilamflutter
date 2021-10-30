import 'package:flutter/material.dart';

class MyDropdown extends StatefulWidget {
  @override
  _MyDropdownState createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  String? dropdownvalue;

  var items = ['Apple', 'Banana', 'Grapes', 'Orange', 'watermelon', 'Pineapple'];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: DropdownButton(
        isExpanded: true,
        value: dropdownvalue,
        hint: Text(
          "Please choose a langauage",
          style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
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
