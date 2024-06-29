import 'package:chat_app_ai/application/features/auth/signIn/bloc/signin_bloc.dart';
import 'package:chat_app_ai/application/features/auth/signUp/bloc/signup_bloc.dart';
import 'package:chat_app_ai/application/features/auth/splash/bloc/bloc/splash_bloc.dart';
import 'package:chat_app_ai/application/features/auth/splash/ui/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
       providers: [
        BlocProvider(create: (context) => SplashBloc(),),
        BlocProvider(create: (context) => SigninBloc(),),
        BlocProvider(create: (context) => SignupBloc(),),
       ],
      child: const MaterialApp(
        home: SplashPage(),
      ),
    );
  }
}
