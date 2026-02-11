import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {
  void goTo(String routeName) {
    Navigator.of(this).pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  void pushTo(String routeName) {
    Navigator.of(this).pushNamed(routeName);
  }

  void pushReplacement(String routeName) {
    Navigator.of(this).pushReplacementNamed(routeName);
  }

  void back() {
    Navigator.of(this).pop();
  }
}
