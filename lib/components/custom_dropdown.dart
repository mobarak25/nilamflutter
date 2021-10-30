import 'package:flutter/material.dart';
import 'package:nilam/constants.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({Key? key}) : super(key: key);

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isOpen = !isOpen;
              });
            },
            child: Text("Change"),
          ),
          if (isOpen)
            Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                  border: Border.all(
                color: kBorderColor,
              )),
              child: Column(
                children: [
                  Text("Amobarak Ali 1"),
                  Text("Amobarak Ali 2"),
                  Text("Amobarak Ali 3"),
                  Text("Amobarak Ali 4"),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
