import 'package:flutter/material.dart';
import 'package:nilam/components/default_button.dart';

import 'background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        children: [
          Spacer(flex: 3),
          Container(
            width: 250,
            child: Image.asset("assets/images/logo.png"),
          ),
          Spacer(flex: 1),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: DefaultButton(
              text: 'Continue',
              press: () {},
            ),
          ),
          Spacer(flex: 3),
        ],
      ),
    );
  }
}
