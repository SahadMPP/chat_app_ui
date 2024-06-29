part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
 const factory HomeEvent.deskTopDrower() = _deskTopDrower;

 const factory HomeEvent.logOut({
  required BuildContext context,
 }) = _logOut;
 
   
}