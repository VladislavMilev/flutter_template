import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movies/auth/forgot_password_widget.dart';
import 'package:movies/theme/application_colors.dart';
import 'package:movies/widgets/input_field_widget.dart';
import 'package:movies/widgets/text_widget.dart';
import 'package:remixicon/remixicon.dart';

class LiginScreenWidget extends StatefulWidget {
  const LiginScreenWidget({Key? key}) : super(key: key);

  @override
  State<LiginScreenWidget> createState() => _LiginScreenWidgetState();
}

class _LiginScreenWidgetState extends State<LiginScreenWidget> {
  // final _mailTextController = TextEditingController(text: 'admin');
  final _mailTextController = TextEditingController();

  // final _passwordTextController = TextEditingController(text: 'admin');
  final _passwordTextController = TextEditingController();
  String? mailError;
  String? passwordError;

  void _auth() {
    final mail = _mailTextController.text;
    final password = _passwordTextController.text;

    setState(() {
      if (_mailTextController.text.isEmpty) {
        HapticFeedback.vibrate();
        mailError = 'Заполните поле';
      } else if (_passwordTextController.text.isEmpty) {
        HapticFeedback.vibrate();
        mailError = null;
        passwordError = 'Заполните поле';
      } else {
        if (mail != 'admin' || password != 'admin') {
          HapticFeedback.heavyImpact();
          mailError = 'Введите корректный адрес';
          passwordError = 'Пароль должен быть более 8 символов';
        } else {
          HapticFeedback.selectionClick();
          mailError = null;
          passwordError = null;
          Navigator.pushReplacementNamed(context, '/home');
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  children: [
                    const _Header(),
                    const SizedBox(height: 45),
                    AppInput(
                        placeholder: 'Адрес электронной почты',
                        prefixIcon: Remix.mail_line,
                        controller: _mailTextController,
                        errorText: mailError,
                        keyboardType: TextInputType.emailAddress),
                    const SizedBox(height: 32),
                    AppInputPassword(
                        placeholder: 'Пароль',
                        prefixIcon: Remix.lock_line,
                        controller: _passwordTextController,
                        errorText: passwordError,
                        keyboardType: TextInputType.text),
                    const SizedBox(height: 25),
                    const _ForgotPassword(),
                    const SizedBox(height: 110),
                    _LoginButton(callback: _auth),
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
          text: 'Войти',
          fontWeight: FontWeight.normal,
        ),
        SizedBox(height: 24),
        AppText(
            text: 'Добро пожаловать',
            fontSize: 14,
            color: AppColor.grayDark,
            fontWeight: FontWeight.normal),
      ],
    );
  }
}

class _ForgotPassword extends StatelessWidget {
  const _ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/forgot_password');
        },
        child: const AppText(
          text: 'Забыли пароль?',
          fontSize: 14,
          color: AppColor.primary,
        ),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  final VoidCallback? callback;

  const _LoginButton({Key? key, this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: FloatingActionButton(
        elevation: 0,
        onPressed: callback,
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
            text: 'Впервые?',
            fontSize: 14,
            color: AppColor.grayDark,
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/register');
            },
            child: const AppText(
              text: 'Зарегистрироваться.',
              fontSize: 14,
              color: AppColor.primary,
            ),
          ),
        ],
      ),
    );
  }
}
