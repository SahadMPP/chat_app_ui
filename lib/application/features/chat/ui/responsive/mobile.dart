import 'package:chat_app_ai/application/features/auth/signIn/ui/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeMobPage extends StatelessWidget {
  const HomeMobPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Home"),
            ElevatedButton(onPressed: () async{
              SharedPreferences  sharedPreferences =await SharedPreferences.getInstance();

              sharedPreferences.clear();
              // ignore: use_build_context_synchronously
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const SignIn(),), (route) => false);

            }, child: const Text("LogOut")),
          ],
        ),
      ),
    );
  }
}
