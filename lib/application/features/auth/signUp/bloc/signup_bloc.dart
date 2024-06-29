// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:chat_app_ai/application/core/hive_store/store.dart';
import 'package:chat_app_ai/domain/entities/user_entity.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupState.initial()) {
    on<_registerUser>((event, emit) async {
      // add data to hive
      final value = User(
          email: event.emalConm,
          name: event.nameConm,
          password: event.passConm);
      final userDB = await Hive.openBox<User>('user_db');
      final id = await userDB.add(value);
      final user = userDB.get(id);
      userDB.put(id,
          User(name: user!.name, email: user.email, password: user.password));
      userList.value.add(user);
    
      // add data to hive

      // show success massage
      // ignore: use_build_context_synchronously
      // ScaffoldMessenger.of(event.context).showSnackBar(const SnackBar(
      //   content: SnackBar(
      //     content: Text("User successfuly registed"),
      //     backgroundColor: Colors.green,
      //     margin: EdgeInsets.all(12),
      //     behavior: SnackBarBehavior.floating,
      //   ),
      // ));

      // // navigate to sign in page
      // ignore: use_build_context_synchronously
      Navigator.of(event.context).pop();
    });

    on<_navigatingToSignIn>((event, emit) {
      Navigator.of(event.context).pop();
    });
  }
}
