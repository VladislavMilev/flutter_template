import 'package:flutter/material.dart';
import 'package:movies/theme/application_colors.dart';
import 'package:movies/theme/input_theme.dart';
import 'package:remixicon/remixicon.dart';

class AppInput extends StatefulWidget {
  final IconData? prefixIcon;
  final String? placeholder;
  final TextEditingController? controller;
  final String? errorText;
  final TextInputType? keyboardType;

  const AppInput({Key? key, this.prefixIcon, this.placeholder, this.controller, this.errorText, this.keyboardType})
      : super(key: key);

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      // onChanged: ,
      // onSubmitted: ,
      keyboardType: widget.keyboardType,
      autocorrect: false,
      enableSuggestions: false,
      controller: widget.controller,
      decoration: InputDecoration(
          errorText: widget.errorText,
          contentPadding: const EdgeInsets.only(left: 19, top: 4),
          hintText: widget.placeholder,
          hintStyle: const TextStyle(color: AppColor.gray, fontSize: 12),
          prefixIcon: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(widget.prefixIcon),
              Container(
                color: AppColor.gray,
                width: 1,
                height: 30,
              ),
            ],
          ),
          prefixIconConstraints: const BoxConstraints(minWidth: 10, maxWidth: 55),
          iconColor: AppColor.primary,
          focusedBorder: InputTheme.underlineFocused,
          disabledBorder: InputTheme.underlineDisabled,
          enabledBorder: InputTheme.underlineEnabled,
          errorBorder: InputTheme.underlineError),
    );
  }
}

class AppInputPassword extends StatefulWidget {
  final IconData? prefixIcon;
  final String? placeholder;
  final TextEditingController? controller;
  final String? errorText;
  final TextInputType? keyboardType;

  const AppInputPassword(
      {Key? key, this.prefixIcon, this.placeholder, this.controller, this.errorText, this.keyboardType})
      : super(key: key);

  @override
  State<AppInputPassword> createState() => _AppInputPasswordState();
}

class _AppInputPasswordState extends State<AppInputPassword> {
  bool _isHidden = true;

  void _hidePassword() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.keyboardType,
      autocorrect: false,
      enableSuggestions: false,
      controller: widget.controller,
      decoration: InputDecoration(
          errorText: widget.errorText,
          contentPadding: const EdgeInsets.only(left: 19, top: 13),
          hintText: widget.placeholder,
          hintStyle: const TextStyle(color: AppColor.gray, fontSize: 12),
          suffixIcon: IconButton(
              focusColor: AppColor.primary,
              disabledColor: AppColor.gray,
              onPressed: _hidePassword,
              icon: _isHidden ? const Icon(Remix.eye_close_line) : const Icon(Remix.eye_line)),
          prefixIcon: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(widget.prefixIcon),
              Container(
                color: AppColor.gray,
                width: 1,
                height: 30,
              ),
            ],
          ),
          prefixIconConstraints: const BoxConstraints(minWidth: 10, maxWidth: 55),
          iconColor: AppColor.primary,
          focusedBorder: InputTheme.underlineFocused,
          disabledBorder: InputTheme.underlineDisabled,
          enabledBorder: InputTheme.underlineEnabled,
          errorBorder: InputTheme.underlineError),
      obscureText: _isHidden,
    );
  }
}
