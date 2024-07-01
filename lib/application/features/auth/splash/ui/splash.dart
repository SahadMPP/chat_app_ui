import 'package:chat_app_ai/application/features/auth/splash/bloc/bloc/splash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
     context.read<SplashBloc>().add(SplashEvent.pageDirection(context: context));
    return const Scaffold(
      body: Center(
        child: Image(
            image: AssetImage(
                'asset/images/Annotation_2024-07-01_111628-removebg-preview.png'),height: 150,),
      ),
    );
  }
}
