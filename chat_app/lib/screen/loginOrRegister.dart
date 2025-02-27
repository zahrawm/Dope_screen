import 'package:chat_app/screen/login_screen.dart';
import 'package:chat_app/screen/register_screen.dart';
import 'package:flutter/material.dart';

class LoginoRegister extends StatefulWidget {
  const LoginoRegister({super.key});

  @override
  State<LoginoRegister> createState() => _LoginoRegisterState();
}

class _LoginoRegisterState extends State<LoginoRegister> {
  bool showLoginPage = true;
  void toogleLoginPages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginScreen();
    } else {
      return RegisterScreen();
    }
  }
}
