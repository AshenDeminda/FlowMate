import 'package:hive/hive.dart';
part 'friend.g.dart';

@HiveType(typeId: 0)
class Friend extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String name;

  Friend({required this.id, required this.name});
}
