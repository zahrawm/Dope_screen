import 'package:chat_app/components/drawer.dart';
import 'package:chat_app/service/auth_service.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  void logout() {
    final _auth = AuthService();
    _auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [IconButton(onPressed: logout, icon: Icon(Icons.logout))],
        centerTitle: true,
      ),
      drawer: MyDrawer(),
    );
  }
}
