import 'package:app_provider/settings_app/providers/user_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: Text(
          context.watch<UserModel>().userName.toString(),
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}