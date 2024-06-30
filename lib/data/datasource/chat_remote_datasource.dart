import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:web_socket_channel/html.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

abstract class ChatRemoteDatasource {
  String gettingResponseFormWebsocket();
  sendingMessageToWebsocket(String value);
}

class ChatRemoteDatasourceImpli implements ChatRemoteDatasource {
  WebSocketChannel? channel;

  @override
  String gettingResponseFormWebsocket() {

    
    try {
      if (kIsWeb) {
        channel = HtmlWebSocketChannel.connect('wss://echo.websocket.org');
      } else {
        channel = IOWebSocketChannel.connect('wss://echo.websocket.org');
      }
      channel!.stream.listen(
        (message) async {
          return await message;
        },
        onError: (error) {
          debugPrint('WebSocket error: $error');
          return 'WebSocket error: $error';
        },
        onDone: () {
          debugPrint('WebSocket connection closed');
        },
      );
    } catch (e) {
      debugPrint('WebSocket connection error: $e');
      return "WebSocket connection error: $e";
    }
    return "somethis went wrong";
  }

  @override
  sendingMessageToWebsocket(String value) {
    channel?.sink.add(value);
  }
}
