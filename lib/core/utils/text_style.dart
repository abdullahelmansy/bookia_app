import 'package:flutter/material.dart';

TextStyle getHeadLineTextStyle(
  context, {
  double fontSize = 30,
  fontWeight = FontWeight.normal,
  Color? color,
}) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color ?? Theme.of(context).colorScheme.onSurface,
  );
}

TextStyle getTitleTextStyle(
  context, {
  double fontSize = 24,
  fontWeight = FontWeight.normal,
  Color? color,
}) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color ?? Theme.of(context).colorScheme.onSurface,
  );
}

TextStyle getBodyTextStyle(
  context, {
  double fontSize = 18,
  fontWeight = FontWeight.normal,
  Color? color,
}) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color ?? Theme.of(context).colorScheme.onSurface,
  );
}

TextStyle getSmallTextStyle(
  context, {
  double fontSize = 14,
  fontWeight = FontWeight.normal,
  Color? color,
}) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color ?? Theme.of(context).colorScheme.onSurface,
  );
}
