import 'package:chat_app_ai/domain/entities/user_entity.dart';
import 'package:hive_flutter/adapters.dart';

abstract class AuthRepo {
  Future<bool> postingUserDataToDataBase(User user);

  Future<Box<User>> gettingUsersDatafromDatabase();
}
