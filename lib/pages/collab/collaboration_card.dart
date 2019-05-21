import 'package:atm_planner/colors.dart';
import 'package:atm_planner/model/chat/chat_model.dart';
import 'package:atm_planner/model/chat/factory/ChatFactory.dart';
import 'package:flutter/material.dart';

class CollaborationCard extends StatefulWidget {
  @override
  CollaborationCardState createState() {
    return new CollaborationCardState();
  }

  final Chat collaboration;

  CollaborationCard({this.collaboration});
}

class CollaborationCardState extends State<CollaborationCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        shadowColor: gray_background,
        elevation: 4,
        color: light_background,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    widget.collaboration.title,
                    style: bold_dark_20,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    CollaborationFactory.getListOfParticipants(
                        widget.collaboration),
                    style: bold_dark_15,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      CollaborationFactory
                          .getLatestMessageWithDateAndOriginator(
                              widget.collaboration),
                      style: bold_gray_15,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
