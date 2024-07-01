part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isExpanded,
    required List<String> messages,
    required String statusMessage,
    required List<MessageModel> list,
  }) = _HomeState;

  factory HomeState.initial() {
    return const HomeState(isExpanded: true, messages: [], statusMessage: '',list: []);
  }
}
