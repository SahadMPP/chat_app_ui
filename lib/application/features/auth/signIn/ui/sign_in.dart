import 'package:chat_app_ai/application/core/responsive/responsive_main.dart';
import 'package:chat_app_ai/application/features/auth/signIn/ui/responsive/mobile.dart';
import 'package:chat_app_ai/application/features/auth/signIn/ui/responsive/tablet.dart';
import 'package:flutter/material.dart';


class SignIn extends StatelessWidget {

  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: ResponsiveLayOut(
          mobileScaffold: SignINMobPage(),
          tabletScaffold: SignInTebPage(),
          desktopScaffold: SignInTebPage()),
    );
  }
}
