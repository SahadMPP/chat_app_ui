part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isExpanded,
  }) = _HomeState;

  factory HomeState.initial(){
    return const HomeState(isExpanded: true);
  }
}
