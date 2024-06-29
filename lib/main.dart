import 'package:chat_app_ai/application/features/auth/signUp/ui/responsive/mobile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignUpMobPage(),
    );
  }
}
