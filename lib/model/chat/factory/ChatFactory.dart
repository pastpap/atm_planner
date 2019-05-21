import 'package:atm_planner/model/chat/chat_model.dart';
import 'package:atm_planner/model/message/message.dart';
import 'package:atm_planner/model/user/user.dart';
import 'package:built_collection/built_collection.dart';
import 'package:intl/intl.dart';

class CollaborationFactory {
  static Chat generateCollaboration({
    String title,
    Set<User> participants,
    List<Message> messages,
  }) {
    var result = new Chat((b) => b
      ..title = title
      ..messages = ListBuilder(messages)
      ..participants = SetBuilder(participants));
    return result;
  }

  static String getListOfParticipants(Chat chat) {
    String result = '';
    if (chat != null) {
      for (var item in chat.participants) {
        result += item.userName + ",";
      }
    }
    return result;
  }

  static String getLatestMessageWithDateAndOriginator(Chat chat) {
    String result = '';
    if (chat != null) {
      Message lastMessage = chat.messages.last;
      result = DateFormat('yyyy-MM-dd').format(lastMessage.addedOn) +
          " " +
          lastMessage.originator.userName +
          ": " +
          lastMessage.content;
    }
    return result;
  }
}
