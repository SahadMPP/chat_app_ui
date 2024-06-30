import 'package:chat_app_ai/data/repository/auth_repo_impli.dart';
import 'package:chat_app_ai/domain/entities/user_entity.dart';
import 'package:chat_app_ai/domain/repositories/auth_repo.dart';
import 'package:hive/hive.dart';

class AuthUseCase {
  AuthRepo authRepo = AuthRepoImpli();

  Future<bool> postingUserDataToDataBase(User user) async {
    final value = await authRepo.postingUserDataToDataBase(user);
    return value;
  }

  Future<Box<User>> gettingUsersDatafromDatabase() async {
    final value = await authRepo.gettingUsersDatafromDatabase();
    return value;
  }
}
