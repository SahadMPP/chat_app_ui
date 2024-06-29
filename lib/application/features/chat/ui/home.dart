import 'package:chat_app_ai/application/core/responsive/responsive_main.dart';
import 'package:chat_app_ai/application/features/chat/ui/responsive/desktop.dart';
import 'package:chat_app_ai/application/features/chat/ui/responsive/mobile.dart';
import 'package:chat_app_ai/application/features/chat/ui/responsive/tablet.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: ResponsiveLayOut(
          mobileScaffold: HomeMobPage(),
          tabletScaffold: HomeTabPage(),
          desktopScaffold: HomeDeskPage()),
    );
  }
}
