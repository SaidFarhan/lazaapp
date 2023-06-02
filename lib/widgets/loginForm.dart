import 'package:flutter/material.dart';

class loginForm extends StatelessWidget {
  loginForm({required this.labeltext, required this.textStyle});

  String labeltext;
  TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: TextFormField(
        decoration:
            InputDecoration(labelText: labeltext, labelStyle: textStyle),
      ),
    );
  }
}
