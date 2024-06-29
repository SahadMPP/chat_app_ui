// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:chat_app_ai/application/features/auth/signIn/ui/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<_deskTopDrower>((event, emit) {
      if (state.isExpanded) {
        emit(state.copyWith(isExpanded: false));
      } else {
        emit(state.copyWith(isExpanded: true));
      }
    });

    on<_logOut>((event, emit) async {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();

      sharedPreferences.clear();
      // ignore: use_build_context_synchronously
      Navigator.of(event.context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const SignIn(),
          ),
          (route) => false);
    });
  }
}
