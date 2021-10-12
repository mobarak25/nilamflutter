import 'package:flutter/material.dart';
import 'package:nilam/components/default_button.dart';
import 'package:nilam/screen/forgot_password/forgot_password_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool checked = false;
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
              obscureText: true,
              enableSuggestions: false,
              decoration: InputDecoration(
                labelText: "Password",
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: checked,
                  onChanged: (value) {
                    setState(() {
                      checked = !checked;
                    });
                  },
                ),
                Text("Remember Me"),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                        context, ForgotPasswordScreen.routeName);
                  },
                  child: Text(
                    "Forgot Password ?",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            DefaultButton(text: "Sign In", press: () {}),
          ],
        ),
      ),
    );
  }
}
