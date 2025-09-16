import 'package:hive/hive.dart';
import '../models/friend.dart';

class FriendService {
  final Box<Friend> box = Hive.box<Friend>('friendsBox');

  Future<void> addFriend(Friend friend) async {
    await box.put(friend.id, friend);
  }

  List<Friend> getFriends() {
    return box.values.toList();
  }

  Future<void> updateFriend(Friend friend) async {
    await box.put(friend.id, friend);
  }

  Future<void> deleteFriend(String id) async {
    await box.delete(id);
  }

  Friend? getFriendById(String id) {
    return box.get(id);
  }
}
