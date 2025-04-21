import 'dart:convert';
import 'dart:io';

void main() async {
  final jsonFile = File('tool/text_styles.json');
  final jsonData = jsonDecode(await jsonFile.readAsString());

  final fontSizes = jsonData['fontSizes'] as List<dynamic>;
  final fontWeights = jsonData['fontWeights'] as Map<String, dynamic>;

  final buffer = StringBuffer();
  buffer.writeln("import 'package:flutter/material.dart';");
  buffer.writeln("import 'config.dart';");
  buffer.writeln("");
  buffer.writeln("class T {");
  buffer.writeln("  static const double _defaultLetterSpacing = 0.0;");
  buffer.writeln("");
  buffer.writeln("  static TextStyle _base(double size, FontWeight weight) => TextStyle(");
  buffer.writeln("    fontSize: size,");
  buffer.writeln("    fontWeight: weight,");
  buffer.writeln("    fontFamily: TextStyleConfig.fontFamily,");
  buffer.writeln("    letterSpacing: _defaultLetterSpacing,");
  buffer.writeln("  );");
  buffer.writeln("");

  for (var size in fontSizes) {
    for (var entry in fontWeights.entries) {
      final weightKey = entry.key;
      final weightValue = entry.value;
      buffer.writeln(
          "  static TextStyle get s${size}${weightKey} => _base($size, $weightValue);");
    }
  }

  buffer.writeln("}");

  final output = File('lib/styles.dart');
  await output.writeAsString(buffer.toString());

  print("✅ Generated lib/styles.dart");
}
