import 'package:chat_app_ai/data/datasource/auth_remote_datasource.dart';
import 'package:chat_app_ai/domain/entities/user_entity.dart';
import 'package:chat_app_ai/domain/repositories/auth_repo.dart';
import 'package:hive/hive.dart';

class AuthRepoImpli implements AuthRepo {
  AuthRemoteDatasource authRemoteDatasource = AuthRemoteDatasourceImpli();

  @override
  Future<Box<User>> gettingUsersDatafromDatabase() async {
    final users = await authRemoteDatasource.gettingUsersDatafromDatabase();
    return users;
  }

  @override
  Future<bool> postingUserDataToDataBase(User user) {
    final boolvalue = authRemoteDatasource.postingUserDataToDataBase(user);
    return boolvalue;
  }
}
