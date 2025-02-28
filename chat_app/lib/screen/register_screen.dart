import 'package:chat_app/components/button.dart';
import 'package:chat_app/components/textfield.dart';
import 'package:chat_app/service/auth_service.dart';

import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmedpasswordController = TextEditingController();

  RegisterScreen({super.key});
  void register(BuildContext context) {
    final _auth = AuthService();
    if (_passwordController == _confirmedpasswordController) {
      try {
        _auth.signInWithEmailPassword(
            _emailcontroller.text, _passwordController.text);
      } catch (e) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(e.toString()),
                ));
      } //
    } else {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Password does not'),
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
          MyTextField(
            controller: _confirmedpasswordController,
            hintText: 'password',
            obscureText: true,
          ),
          SizedBox(
            height: 25,
          ),
          Button(
            text: "Register",
            onTap: () => register(context),
          ),
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
