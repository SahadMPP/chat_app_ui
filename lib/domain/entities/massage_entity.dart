

import 'package:hive_flutter/adapters.dart';
part 'massage_entity.g.dart';

@HiveType(typeId: 1)
class MessageModel extends HiveObject  {

  @HiveField(0)
  int? id;
  @HiveField(1)
  String title;
  @HiveField(2)
  List<String> messages;

  MessageModel({
    this.id,
    required this.messages,
    required this.title,
  });
}
