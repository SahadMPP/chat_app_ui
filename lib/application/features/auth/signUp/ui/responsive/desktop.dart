import 'package:chat_app_ai/application/features/auth/signUp/ui/responsive/mobile.dart';
import 'package:flutter/material.dart';

class SignUpDeskPage extends StatelessWidget {
  const SignUpDeskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "asset/images/vecteezy_artificial-intelligence-chatbot-assistance-background_21835780.jpg"),
                fit: BoxFit.cover)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * .3,
                child: const SignUpMobPage(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
