import 'package:flutter/material.dart';

enum TabItem {
  red(Colors.red),
  green(Colors.green),
  blue(Colors.blue);

  final MaterialColor color;
  const TabItem(this.color);
}
