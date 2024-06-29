part of 'signin_bloc.dart';

@freezed
class SigninEvent with _$SigninEvent {

  const factory SigninEvent.homePageNavigation({
    required BuildContext context,
  }) = _homePageNavigation;

  const factory SigninEvent.signUpPageNavigation({
    required BuildContext context,

  }) = _signUpPageNavigation;
  
  
}