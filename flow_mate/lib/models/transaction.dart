import 'package:hive/hive.dart';
part 'transaction.g.dart';

@HiveType(typeId: 1)
class TransactionModel extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String friendId;

  @HiveField(2)
  int amount;

  @HiveField(3)
  String reason;

  @HiveField(4)
  DateTime date;

  TransactionModel({
    required this.id,
    required this.friendId,
    required this.amount,
    required this.reason,
    required this.date,
  });
}
