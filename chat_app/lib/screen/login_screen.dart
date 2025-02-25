import 'package:chat_app/components/button.dart';
import 'package:chat_app/components/textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  LoginScreen({super.key});

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
          Button(
            text: "Login",
            onTap: () {},
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
