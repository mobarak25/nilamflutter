import 'package:flutter/material.dart';
import 'package:nilam/size_healper.dart';

class OtpFields extends StatefulWidget {
  const OtpFields({Key? key}) : super(key: key);

  @override
  _OtpFieldsState createState() => _OtpFieldsState();
}

class _OtpFieldsState extends State<OtpFields> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: kWidth(context) * 0.2,
          child: TextFormField(
            autofocus: true,
            obscureText: true,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: kWidth(context) * 0.12,
            ),
            decoration: buildDecoration(),
            onChanged: (value) {
              nextField(value, pin2FocusNode);
            },
          ),
        ),
        SizedBox(
          width: kWidth(context) * 0.2,
          child: TextFormField(
            focusNode: pin2FocusNode,
            onChanged: (value) => nextField(value, pin3FocusNode),
            obscureText: true,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: kWidth(context) * 0.12,
            ),
            decoration: buildDecoration(),
          ),
        ),
        SizedBox(
          width: kWidth(context) * 0.2,
          child: TextFormField(
            focusNode: pin3FocusNode,
            onChanged: (value) => nextField(value, pin4FocusNode),
            obscureText: true,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: kWidth(context) * 0.12,
            ),
            decoration: buildDecoration(),
          ),
        ),
        SizedBox(
          width: kWidth(context) * 0.2,
          child: TextFormField(
            focusNode: pin4FocusNode,
            onChanged: (value) {
              if (value.length == 1) {
                pin4FocusNode!.unfocus();
                // Then you need to check is the code is correct or not
              }
            },
            obscureText: true,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: kWidth(context) * 0.12,
            ),
            decoration: buildDecoration(),
          ),
        ),
      ],
    );
  }

  InputDecoration buildDecoration() {
    return InputDecoration(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      filled: true,
      fillColor: Colors.white,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(13),
          bottomLeft: Radius.circular(13),
          bottomRight: Radius.circular(13),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(13),
          bottomLeft: Radius.circular(13),
          bottomRight: Radius.circular(13),
        ),
      ),
    );
  }
}
