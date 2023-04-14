import 'package:flutter/material.dart';
import 'package:flutter_login_mobx_multi_theming/theming_page.dart';
import 'package:flutter_login_mobx_multi_theming/theming_store.dart';

import 'user_model.dart';

class UserPage extends StatefulWidget {
  const UserPage(
    this.themingStore, {
    super.key,
    required this.user,
  });

  final ThemingStore themingStore;
  final UserModel user;

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('User'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, ${widget.user.email}!',
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'What would you like to do?',
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
                  color: Colors.black26,
                ),
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  TextButton.icon(
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => ThemingPage(widget.themingStore),
                      ),
                    ),
                    icon: const Icon(Icons.settings),
                    label: const Text(
                      'THEMING',
                    ),
                  ),
                  const SizedBox(width: 10),
                  TextButton.icon(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.exit_to_app),
                    label: const Text(
                      'SIGNOUT',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
