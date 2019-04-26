import 'package:atm_planner/model/chat/factory/ChatFactory.dart';
import 'package:atm_planner/model/message/message.dart';
import 'package:atm_planner/model/user/user.dart';
import 'package:flutter/material.dart';
import 'package:atm_planner/pages/collab/collaboration_card.dart';
import 'package:atm_planner/model/chat/chat_model.dart';

class CollaborationListPage extends StatefulWidget {
  CollaborationListPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _CollaborationListPageState createState() => _CollaborationListPageState();
}

class _CollaborationListPageState extends State<CollaborationListPage> {
  List<Chat> _collaborations = [
    CollaborationFactory.generateCollaboration(
      title: "First Collaboration",
      participants: Set.from(List.generate(
        2,
        (int index) => User(userName: "User" + (index + 1).toString()),
      )),
      messages: List.generate(
          3,
          (int index) => Message(
                originator: User(userName: "User" + (index + 1).toString()),
                addedOn: DateTime.now(),
                content: "Message" + (index + 1).toString(),
              )),
    ),
    CollaborationFactory.generateCollaboration(
      title: "Second Collaboration",
      participants: Set.from(List.generate(
        3,
        (int index) => User(userName: "User" + (index + 1).toString()),
      )),
      messages: List.generate(
          1,
          (int index) => Message(
                originator: User(userName: "User" + (index + 1).toString()),
                addedOn: DateTime.now(),
                content: "Message" + (index + 1).toString(),
              )),
    ),
    CollaborationFactory.generateCollaboration(
      title: "Third Collaboration",
      participants: Set.from(List.generate(
        4,
        (int index) => User(userName: "User" + (index + 1).toString()),
      )),
      messages: List.generate(
          2,
          (int index) => Message(
                originator: User(userName: "User" + (index + 1).toString()),
                addedOn: DateTime.now(),
                content: "Message" + (index + 1).toString(),
              )),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: _collaborations.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int i) {
          return ListTile(
            title: CollaborationCard(
              collaboration: _collaborations[i],
            ),
            //onTap: () => _showDetails(flights[i]),
          );
        },
      ),
    );
  }
}
