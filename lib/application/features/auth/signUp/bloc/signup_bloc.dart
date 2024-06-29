// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(const _Initial()) {
    on<_registerUser>((event, emit) {
      //  regitering user
      Navigator.of(event.context).pop();
    });

     on<_navigatingToSignIn>((event, emit) {
      Navigator.of(event.context).pop();
    });
  }
}
