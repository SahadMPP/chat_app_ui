import 'package:chat_app_ai/application/features/chat/widgets/chat_box_home.dart';
import 'package:chat_app_ai/application/features/chat/widgets/header_ui.dart';
import 'package:chat_app_ai/application/features/chat/widgets/model_drower.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeDeskPage extends StatelessWidget {
  final int expandedWidth;

  const HomeDeskPage({super.key, required this.expandedWidth});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HomeHeader(),
          Expanded(
              flex: 10,
              child: Row(
                children: [
                  const ModelDrowerDesk(),
                  // const ChatDrowerDesk(),
                  Expanded(
                      flex: expandedWidth,
                      child: Column(
                        children: [
                          Expanded(
                              child: Container(
                            color: Colors.white,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "What are AI Models",
                                    style: GoogleFonts.lilitaOne(
                                        textStyle: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      fontSize: 18,
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          )),
                          const Expanded(
                            flex: 12,
                            child: ChatBoxHome(),
                          ),
                        ],
                      )),
                ],
              )),
        ],
      ),
    );
  }
}

