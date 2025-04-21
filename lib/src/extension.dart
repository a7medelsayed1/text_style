import 'package:flutter/material.dart';
import 'config.dart';

extension TextStyleColors on TextStyle {
  TextStyle get white => copyWith(color: Colors.white);
  TextStyle get black => copyWith(color: Colors.black);
  TextStyle get primary => copyWith(color: TextStyleConfig.primaryColor??Colors.blue);
}
