import 'package:flutter/material.dart';
import 'package:movies/theme/application_colors.dart';

abstract class InputTheme {
  static const UnderlineInputBorder underlineEnabled = UnderlineInputBorder(
      borderSide: BorderSide(color: AppColor.gray, width: 1));

  static const UnderlineInputBorder underlineFocused = UnderlineInputBorder(
      borderSide: BorderSide(color: AppColor.primary, width: 2));

  static const UnderlineInputBorder underlineDisabled = UnderlineInputBorder(
      borderSide: BorderSide(color: AppColor.gray, width: 1));

  static const UnderlineInputBorder underlineError = UnderlineInputBorder(
      borderSide: BorderSide(color: AppColor.error, width: 2));
}