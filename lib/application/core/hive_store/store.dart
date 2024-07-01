import 'package:chat_app_ai/domain/entities/massage_entity.dart';
import 'package:chat_app_ai/domain/entities/user_entity.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

ValueNotifier<List<User>> userList = ValueNotifier([]);

ValueNotifier<List<MessageModel>> modelList = ValueNotifier([]);

class HiveMassageModel extends ChangeNotifier {

  gettingModel()async {
      final userDB = await Hive.openBox<MessageModel>('message_db');
    modelList.value.clear();
    modelList.value.addAll(userDB.values);
    modelList.notifyListeners();
  }
}
