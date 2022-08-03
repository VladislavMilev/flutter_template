import 'package:flutter/material.dart';
import 'package:movies/theme/application_colors.dart';
import 'package:movies/widgets/input_field_widget.dart';
import 'package:movies/widgets/text_widget.dart';
import 'package:remixicon/remixicon.dart';

class ForgotPasswordScreenWidget extends StatefulWidget {
  const ForgotPasswordScreenWidget({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreenWidget> createState() => _ForgotPasswordScreenWidgetState();
}

class _ForgotPasswordScreenWidgetState extends State<ForgotPasswordScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          splashRadius: 20,
          icon: const Icon(Remix.arrow_left_line),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 20,
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(left: 26, top: 23, right: 26),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    _Header(),
                    SizedBox(height: 45),
                    AppInput(
                        placeholder: 'Адрес электронной почты',
                        prefixIcon: Remix.mail_line,
                        keyboardType: TextInputType.emailAddress),
                    SizedBox(height: 110),
                    _LoginButton(),
                    // SizedBox(height: 260),
                  ],
                ),
              ),
            ),
            const Expanded(
              flex: 2,
              child: _RegisterText(),
            ),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        AppText(
          text: 'Забыли пароль?',
          fontWeight: FontWeight.normal,
        ),
        SizedBox(height: 24),
        AppText(
            text: 'Введите адрес электронной почты',
            fontSize: 14,
            color: AppColor.grayDark,
            fontWeight: FontWeight.normal),
      ],
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: FloatingActionButton(
        elevation: 0,
        onPressed: () {},
        child: const Icon(Remix.arrow_right_line),
      ),
    );
  }
}

class _RegisterText extends StatelessWidget {
  const _RegisterText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const AppText(
            text: 'Вспомнили пароль?',
            fontSize: 14,
            color: AppColor.grayDark,
          ),
          const SizedBox(width: 2),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const AppText(
              text: 'Войти.',
              fontSize: 14,
              color: AppColor.primary,
            ),
          ),
        ],
      ),
    );
  }
}
