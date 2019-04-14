import 'package:atm_planner/model/chat/chat.dart';
import 'package:flutter/material.dart';

class CollaborationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(collaboration.title),
    );
  }

  Chat collaboration;

  CollaborationCard({this.collaboration});
}
