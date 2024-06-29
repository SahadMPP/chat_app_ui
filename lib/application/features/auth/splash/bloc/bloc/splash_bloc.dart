// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:chat_app_ai/application/core/const/const_values.dart';
import 'package:chat_app_ai/application/features/auth/signIn/ui/sign_in.dart';
import 'package:chat_app_ai/application/features/chat/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashState.initial()) {
    on<_PageDirection>((event, emit) async {
      await Future.delayed(const Duration(seconds: 2));
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      final bool? response =
          sharedPreferences.getBool(loginChekSharepreference);
      if (response == true) {
        // ignore: use_build_context_synchronously
        Navigator.of(event.context).pushReplacement(MaterialPageRoute(
          builder: (context) => const Home(),
        ));
      } else {
        // ignore: use_build_context_synchronously
        Navigator.of(event.context).pushReplacement(MaterialPageRoute(
          builder: (context) => const SignIn(),
        ));
      }
    });
  }
}
