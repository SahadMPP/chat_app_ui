import 'package:chat_app_ai/application/features/chat/ui/responsive/desktop.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeMobPage extends StatelessWidget {
  const HomeMobPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        centerTitle: true,
        title:  Text("CHATY",style: GoogleFonts.anton(
          textStyle: const TextStyle(
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.black,
          )
        ),),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(),
          )
        ],
      ),
      drawer: const Drawer(
        child: ModelDrowerDesk(),
      ),
      body:const ChatBoxHome(),
    );
  }
}
