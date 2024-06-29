import 'package:chat_app_ai/application/features/auth/splash/bloc/bloc/splash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
   context.read<SplashBloc>().add(SplashEvent.pageDirection(context: context));
    return   Scaffold(
      body: Center(child: Container(height: 100,width: 100,color: Colors.red[100],)),
    );
  }
}