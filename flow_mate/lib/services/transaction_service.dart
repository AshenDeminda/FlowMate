import 'package:hive/hive.dart';
import '../models/transaction.dart';

class TransactionService {
  final Box<TransactionModel> box = Hive.box<TransactionModel>('transactionsBox');

  Future<void> addTransaction(TransactionModel tx) async {
    await box.put(tx.id, tx);
  }

  List<TransactionModel> getTransactionsByFriend(String friendId) {
    return box.values.where((tx) => tx.friendId == friendId).toList();
  }

  int getBalanceForFriend(String friendId) {
    return getTransactionsByFriend(friendId)
        .fold(0, (sum, tx) => sum + tx.amount);
  }

  Future<void> updateTransaction(TransactionModel tx) async {
    await box.put(tx.id, tx);
  }

  Future<void> deleteTransaction(String id) async {
    await box.delete(id);
  }

  TransactionModel? getTransactionById(String id) {
    return box.get(id);
  }

  List<TransactionModel> getAllTransactions() {
    return box.values.toList();
  }
}
