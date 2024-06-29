import 'package:chat_app_ai/application/core/responsive/responsive_main.dart';
import 'package:chat_app_ai/application/features/auth/signUp/ui/responsive/desktop.dart';
import 'package:chat_app_ai/application/features/auth/signUp/ui/responsive/mobile.dart';
import 'package:chat_app_ai/application/features/auth/signUp/ui/responsive/tablet.dart';
import 'package:flutter/material.dart';


class SignUp extends StatelessWidget {

  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: ResponsiveLayOut(
          mobileScaffold: SignUpMobPage(),
          tabletScaffold: SignUpTabPage(),
          desktopScaffold: SignUpDeskPage()),
    );
  }
}