import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movies/theme/application_colors.dart';
import 'package:movies/widgets/input_field_widget.dart';
import 'package:movies/widgets/text_widget.dart';
import 'package:remixicon/remixicon.dart';

class RegisterScreenWidget extends StatefulWidget {
  const RegisterScreenWidget({Key? key}) : super(key: key);

  @override
  State<RegisterScreenWidget> createState() => _RegisterScreenWidget();
}

class _RegisterScreenWidget extends State<RegisterScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // leading: IconButton(
        //   splashRadius: 20,
        //   icon: const Icon(Remix.arrow_left_line),
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        // ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 20,
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(left: 26, top: 23, right: 26),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    _Header(),
                    SizedBox(height: 45),
                    _RegisterFormFields(),
                    SizedBox(height: 25),
                    _TermsText(),
                    SizedBox(height: 25),
                    _RegisterButton(),
                  ],
                ),
              ),
            ),
            const Expanded(
              flex: 2,
              child: _LoginText(),
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
          text: 'Зарегистрироваться',
          fontWeight: FontWeight.normal,
        ),
        SizedBox(height: 24),
        AppText(
            text: 'Создать аккаунт здесь',
            fontSize: 14,
            color: AppColor.grayDark,
            fontWeight: FontWeight.normal),
      ],
    );
  }
}

class _RegisterFormFields extends StatefulWidget {
  const _RegisterFormFields({Key? key}) : super(key: key);

  @override
  State<_RegisterFormFields> createState() => _RegisterFormFieldsState();
}

class _RegisterFormFieldsState extends State<_RegisterFormFields> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        AppInput(placeholder: 'Имя пользователя', prefixIcon: Remix.user_line),
        SizedBox(height: 32),
        AppInput(placeholder: 'Номер мобильного телефона', prefixIcon: Remix.smartphone_line),
        SizedBox(height: 32),
        AppInput(placeholder: 'Адрес электронной почты', prefixIcon: Remix.mail_line),
        SizedBox(height: 32),
        AppInputPassword(placeholder: 'Пароль', prefixIcon: Remix.lock_line),
      ],
    );
  }
}

class _TermsText extends StatelessWidget {
  const _TermsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
        alignment: Alignment.topLeft,
        child: AppText(
          text: 'Регистрируясь, вы соглашаетесь с нашими условиями использования',
          fontSize: 14,
          color: AppColor.primary,
        ));
  }
}

class _RegisterButton extends StatelessWidget {
  const _RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: FloatingActionButton(
        // enableFeedback: true,
        elevation: 0,
        onPressed: () {
          HapticFeedback.lightImpact();
        },
        child: const Icon(Remix.arrow_right_line),
      ),
    );
  }
}

class _LoginText extends StatelessWidget {
  const _LoginText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const AppText(
            text: 'Уже зарегистрировались?',
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
