part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState() = _SignupState;

  factory SignupState.initial() {
    return const SignupState(
     
    );
  }
}
