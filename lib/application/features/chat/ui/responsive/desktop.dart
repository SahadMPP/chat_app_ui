import 'package:chat_app_ai/application/features/chat/widgets/chat_box_home.dart';
import 'package:chat_app_ai/application/features/chat/widgets/model_drower.dart';
import 'package:flutter/material.dart';

class HomeDeskPage extends StatelessWidget {
  final int expandedWidth;

  const HomeDeskPage({super.key, required this.expandedWidth});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                tileMode: TileMode.mirror,
                end: Alignment.topCenter,
                colors: [
              Color.fromARGB(255, 4, 7, 48),
              Color.fromARGB(255, 238, 5, 148),
              Color.fromARGB(255, 238, 5, 148),
              Color.fromARGB(255, 4, 7, 48),
            ])),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              // const HomeHeader(),
              Expanded(
                  flex: 10,
                  child: Row(
                    children: [
                      const ModelDrowerDesk(),
                      // const ChatDrowerDesk(),
                      Expanded(
                          flex: expandedWidth,
                          child: const ChatBoxHome()),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
