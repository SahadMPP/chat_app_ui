part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.registerUser({
    required BuildContext context,
    required String nameConm,
    required String emalConm,
    required String passConm,
  }) = _registerUser;

  const factory SignupEvent.navigatingToSignIn({
    required BuildContext context,

  }) = _navigatingToSignIn;
  
  
}