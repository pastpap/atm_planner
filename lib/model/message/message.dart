import 'package:atm_planner/model/user/user.dart';

class Message {
  Message({originator: User, addedOn: DateTime, content: String}) {
    this.originator = originator;
    this.content = content;
    this.addedOn = addedOn;
  }
  User originator;
  DateTime addedOn;
  String content;
}
