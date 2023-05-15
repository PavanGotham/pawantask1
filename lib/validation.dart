import 'package:flutter/cupertino.dart';

var emailval = RegExp(
    (r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"));
var capitalval = RegExp(r'^(?=.*?[A-Z])');
var smallval = RegExp(r'^(?=.*?[a-z])');
var numberval = RegExp(r'^(?=.*?[0-9])');
var specialval = RegExp(r'^(?=.*?[!@#\$&*~])');
var numlengthval = RegExp(r'^.{7,}$');
TextEditingController password = TextEditingController();
validMail(value) {
  if (value == null || value.isEmpty) {
    return 'please enter email';
  } else if (!emailval.hasMatch(value)) {
    return 'enter valid mail';
  }
}

validPassword(value) {
  if (value == null || value.isEmpty) {
    return 'please enter password';
  } else if (!capitalval.hasMatch(value)) {
    return 'Password must contain atleast one capital letter';
  } else if (!smallval.hasMatch(value)) {
    return 'Password must contain atleast one small letter';
  } else if (!numberval.hasMatch(value)) {
    return 'Password must contain atleast one Number';
  } else if (!specialval.hasMatch(value)) {
    return 'Password must contain atleast one Special character';
  } else if (!numlengthval.hasMatch(value)) {
    return 'Password length must be atleast 7';
  }
}

reEnterPassword(value) {
  if (value == null || value.isEmpty) {
    return 'please enter password again';
  } else if (value != password.text) {
    return 'enter correct password that you entered before';
  }
}

validEmplty(value) {
  if (value == null || value.isEmpty) {
    return 'please enter name';
  }
}
