import 'package:flutter/material.dart';
import 'package:nilam/components/default_button.dart';
import 'package:nilam/constants.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: size.width * 0.4,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "First Name",
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.44,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Last Name",
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email or Phone",
              ),
            ),
            SizedBox(height: 30),
            TextFormField(
              obscureText: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Password",
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Checkbox(
                  value: checked,
                  onChanged: (newvalue) {
                    setState(() {
                      checked = !checked;
                    });
                  },
                ),
                Text("I agree to the "),
                GestureDetector(
                  child: Text(
                    "Terms and Conditions",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            DefaultButton(text: "Sign In", press: () {}),
          ],
        ),
      ),
    );
  }
}
