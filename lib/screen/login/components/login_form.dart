import 'package:flutter/material.dart';
import 'package:nilam/components/default_button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email or Phone",
              ),
            ),
            SizedBox(height: 30),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Password",
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (bool? value) {},
                ),
                Text("Remember Me"),
                Spacer(),
                GestureDetector(
                  child: Text(
                    "Forgot Password ?",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
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
