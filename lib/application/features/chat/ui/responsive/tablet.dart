import 'package:flutter/material.dart';

class HomeTabPage extends StatelessWidget {
  const HomeTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(),
      drawer: const Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Home"),
            ElevatedButton(onPressed: () {}, child: const Text("LogOut")),
          ],
        ),
      ),
    );
  }
}
