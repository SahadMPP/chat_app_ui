// ignore: depend_on_referenced_packages
import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:chat_app_ai/application/core/const/const_values.dart';
import 'package:chat_app_ai/application/features/auth/signUp/ui/sign_up.dart';
import 'package:chat_app_ai/application/features/chat/ui/home.dart';
import 'package:chat_app_ai/domain/usecase/auth_usecase.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'signin_event.dart';
part 'signin_state.dart';
part 'signin_bloc.freezed.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  SigninBloc() : super(const _Initial()) {
    on<_homePageNavigation>((event, emit) async {
      Future<bool> isRegisted() async {
        final userDB = await AuthUseCase().gettingUsersDatafromDatabase();

        for (var i = 0; i < userDB.length; i++) {
          final currentUser = userDB.getAt(i);
          if (currentUser!.email == event.email &&
              currentUser.password == event.password) {
            return true;
          }
        }
        return false;
      }

      final bool value = await isRegisted();

      if (value) {
        SharedPreferences sharedPreferences =
            await SharedPreferences.getInstance();
        await sharedPreferences.setBool(loginChekSharepreference, true);
        // ignore: use_build_context_synchronously
        Navigator.of(event.context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const Home(),
            ),
            (route) => false);
      } else {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(event.context).showSnackBar(const SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
          margin: EdgeInsets.all(15),
          content: Text('User not registed'),
        ));
        return;
      }
    });

    on<_signUpPageNavigation>((event, emit) {
      Navigator.of(event.context).push(MaterialPageRoute(
        builder: (context) => const SignUp(),
      ));
    });
  }
}
