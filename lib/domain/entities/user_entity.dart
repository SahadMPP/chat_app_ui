
import 'package:hive/hive.dart';
part 'user_entity.g.dart';

@HiveType(typeId: 0)
class User extends HiveObject{

  @HiveField(0)
   int? id;
  @HiveField(1)
   String name;
  @HiveField(2)
   String email;
  @HiveField(3)
   String password;

  User({
    this.id,
    required this.name,
    required this.email,
    required this.password,
  });
}
