import 'package:chat_app_ai/application/core/hive_store/store.dart';
import 'package:chat_app_ai/domain/entities/user_entity.dart';
import 'package:hive_flutter/adapters.dart';

abstract class AuthRemoteDatasource {
  Future<bool> postingUserDataToDataBase(User user);

  Future<Box<User>> gettingUsersDatafromDatabase();
}

class AuthRemoteDatasourceImpli implements AuthRemoteDatasource {
  
  @override
  Future<Box<User>> gettingUsersDatafromDatabase() async {
    final userDB = await Hive.openBox<User>('user_db');
    return userDB;
  }

  @override
  Future<bool> postingUserDataToDataBase(User value) async {
    try {
      final userDB = await Hive.openBox<User>('user_db');
      final id = await userDB.add(value);
      final user = userDB.get(id);
      userDB.put(id,
          User(name: user!.name, email: user.email, password: user.password));
      userList.value.add(user);
      return true;
    } catch (e) {
      throw Exception("User registering is failed");
    }
  }
}
