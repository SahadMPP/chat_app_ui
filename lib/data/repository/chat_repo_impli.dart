import 'package:chat_app_ai/data/datasource/chat_remote_datasource.dart';
import 'package:chat_app_ai/domain/repositories/chat_repo.dart';

class ChatRepoImpli implements ChatRepo {
  ChatRemoteDatasource chatRemoteDatasource = ChatRemoteDatasourceImpli();

  @override
  String gettingResponseFormWebsocket() {
    final value = chatRemoteDatasource.gettingResponseFormWebsocket();
    return value;
  }

  @override
  sendingMessageToWebsocket(String value) {
    final val = chatRemoteDatasource.sendingMessageToWebsocket(value);
    return val;
  }
}
