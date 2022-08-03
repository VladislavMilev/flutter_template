import 'package:flutter/material.dart';
import 'package:movies/auth/forgot_password_widget.dart';
import 'package:movies/auth/register_widget.dart';
import 'package:movies/home/home_screen_widget.dart';
import 'package:movies/theme/application_theme.dart';
import 'auth/login_widget.dart';

void main() {
  runApp(const Application());
}

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ApplicationTheme().light(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LiginScreenWidget(),
        '/register': (context) => const RegisterScreenWidget(),
        '/forgot_password': (context) => const ForgotPasswordScreenWidget(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
