import 'package:atm_planner/model/chat/factory/ChatFactory.dart';
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
      participants: Set(),
      messages: Set(),
    ),
    CollaborationFactory.generateCollaboration(
      title: "Second Collaboration",
      participants: Set(),
      messages: Set(),
    ),
    CollaborationFactory.generateCollaboration(
      title: "Third Collaboration",
      participants: Set(),
      messages: Set(),
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
