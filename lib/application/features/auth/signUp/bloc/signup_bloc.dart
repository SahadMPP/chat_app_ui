// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:chat_app_ai/domain/entities/user_entity.dart';
import 'package:chat_app_ai/domain/usecase/auth_usecase.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupState.initial()) {
    on<_registerUser>((event, emit) async {
      var value = User(
          email: event.emalConm,
          name: event.nameConm,
          password: event.passConm);

      final bool isRegisted =
          await AuthUseCase().postingUserDataToDataBase(value);

      if (isRegisted) {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(event.context).showSnackBar(const SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.green,
          margin: EdgeInsets.all(15),
          content: Text('User registed'),
        ));
        // ignore: use_build_context_synchronously
        Navigator.of(event.context).pop();
      }
    });

    on<_navigatingToSignIn>((event, emit) {
      Navigator.of(event.context).pop();
    });
  }
}
