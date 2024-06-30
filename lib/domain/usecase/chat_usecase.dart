import 'package:chat_app_ai/data/repository/chat_repo_impli.dart';
import 'package:chat_app_ai/domain/repositories/chat_repo.dart';

class ChatUseCase {

  ChatRepo chatRepo = ChatRepoImpli();


  String gettingResponseFormWebsocket() {
    final value = chatRepo.gettingResponseFormWebsocket();
    return value;
  }

  sendingMessageToWebsocket(String value) {
     final val = chatRepo.sendingMessageToWebsocket(value);
     return val;
  }
}
