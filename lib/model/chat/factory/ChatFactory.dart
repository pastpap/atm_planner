import 'package:atm_planner/model/chat/chat.dart';
import 'package:atm_planner/model/message/message.dart';
import 'package:atm_planner/model/user/user.dart';
import 'package:built_collection/built_collection.dart';

class CollaborationFactory {
  static Chat generateCollaboration({
    String title,
    Set<User> participants,
    Set<Message> messages,
  }) {
    var result = new Chat((b) => b
      ..title = title
      ..messages = SetBuilder(messages)
      ..participants = SetBuilder(participants));
    return result;
  }
}
