import 'dart:developer';

import 'package:chat_app/components/button.dart';
import 'package:chat_app/components/textfield.dart';
import 'package:chat_app/service/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailcontroller = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  void login(BuildContext context) async {
    final authService = AuthService();
    try {
      await authService.signInWithEmailPassword(
          _emailcontroller.text, _passwordController.text);
    } catch (e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text(e.toString()),
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.message,
            size: 60,
            color: Theme.of(context).primaryColor,
          ),
          Text(
            "Welcome back you have been missed",
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
          SizedBox(
            height: 25,
          ),
          MyTextField(
            controller: _emailcontroller,
            hintText: 'Email',
            obscureText: false,
          ),
          SizedBox(
            height: 25,
          ),
          MyTextField(
            controller: _passwordController,
            hintText: 'password',
            obscureText: true,
          ),
          SizedBox(
            height: 25,
          ),
          Button(text: "Login", onTap: () => login(context)),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Not a  member ?'),
              GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Register Now',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
