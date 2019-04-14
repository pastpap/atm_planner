import 'package:atm_planner/model/chat/chat_model.dart';
import 'package:flutter/material.dart';

class CollaborationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(collaboration.title),
    );
  }

  final Chat collaboration;

  CollaborationCard({this.collaboration});
}
