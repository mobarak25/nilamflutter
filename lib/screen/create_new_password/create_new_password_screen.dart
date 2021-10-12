import 'package:flutter/material.dart';
import 'package:nilam/screen/create_new_password/components/body.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  static String routeName = "/create_new_password";

  const CreateNewPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
