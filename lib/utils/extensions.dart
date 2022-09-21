import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

extension BuildContextExt on BuildContext {
  double get sw => MediaQuery.of(this).size.width;
  double get sh => MediaQuery.of(this).size.height;
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}

extension NumberExt on num {
  SizedBox get verticalSpace => SizedBox(
        height: toDouble(),
      );
  SizedBox get horizontalSpace => SizedBox(
        width: toDouble(),
      );
}

extension StringExt on String {
  String get ext {
    return basename(this).split(".").last;
  }
}
