// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:chat_app_ai/application/features/auth/signIn/ui/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/io.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:web_socket_channel/html.dart';

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
    Future<void> handleMessage(String message) async {
      List<String> newList = List.from(state.messages)..add(message);
      // ignore: invalid_use_of_visible_for_testing_member
      emit(state.copyWith(messages: newList));
    }
    WebSocketChannel? channel;
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
    on<_connectingToWebsonket>((event, emit) {
      try {
        if (kIsWeb) {
          channel = HtmlWebSocketChannel.connect('wss://echo.websocket.org');
        } else {
          channel = IOWebSocketChannel.connect('wss://echo.websocket.org');
        }
        channel!.stream.listen(
          (message) async {
            handleMessage(message);
          },
          onError: (error) {
            debugPrint('WebSocket error: $error');
            emit(state.copyWith(statusMessage: 'WebSocket error: $error'));
          },
          onDone: () {
            debugPrint('WebSocket connection closed');
            emit(state.copyWith(statusMessage: 'WebSocket connection closed'));
          },
        );
      } catch (e) {
        debugPrint('WebSocket connection error: $e');
        emit(state.copyWith(statusMessage: 'WebSocket connection error: $e'));
      }
    });

    on<_sentingMassage>((event, emit) {
      // ChatUseCase().sendingMessageToWebsocket(event.text);
      channel!.sink.add(event.text);
    });
  }
}
