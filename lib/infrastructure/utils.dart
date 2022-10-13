import 'package:flutter/material.dart';

///  Retrieve the email validate or not
bool validateEmail(String email) {
  return RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
}

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

void hideKeyBoard(BuildContext context, {FocusNode? node}) {
  FocusScope.of(context).requestFocus(node ?? FocusNode());
}