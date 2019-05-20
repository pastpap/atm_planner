import 'package:atm_planner/colors.dart';
import 'package:atm_planner/model/chat/chat_model.dart';
import 'package:atm_planner/model/message/message.dart';
import 'package:atm_planner/model/user/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

var _scaffoldContext;

class CollaborationDetails extends StatefulWidget {
  CollaborationDetails({this.chat, this.currentUser});
  final Chat chat;
  final User currentUser;
  @override
  _CollaborationDetailsState createState() => _CollaborationDetailsState();
}

class _CollaborationDetailsState extends State<CollaborationDetails>
    with TickerProviderStateMixin {
  List<ChatMessage> _messages = <ChatMessage>[];
  List<Color> _userColors = <Color>[];
  final TextEditingController _textController = TextEditingController();
  bool _isComposing = false;

  Choice _selectedChoice = choices[0]; // promotion "state".

  void _select(Choice choice) {
    // Causes the app to rebuild with the new _selectedChoice.
    setState(() {
      _selectedChoice = choice;
    });
  }

  RandomColor _randomColor = RandomColor();
  initState() {
    super.initState();
    for (var item in widget.chat.messages) {
      ChatMessage chatMessage = ChatMessage(
        message: item,
        animationController: AnimationController(
          vsync: this,
          duration: Duration(milliseconds: 700),
        ),
        currentUser: widget.currentUser,
      );
      _messages.insert(0, chatMessage);
      chatMessage.animationController.forward();
    }
    for (var participant in widget.chat.participants) {
      _userColors.insert(0, _randomColor.randomColor());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        actions: <Widget>[
          PopupMenuButton<Choice>(
            onSelected: _select,
            itemBuilder: (BuildContext context) {
              return choices.map((Choice choice) {
                return PopupMenuItem<Choice>(
                  value: choice,
                  child: Text(choice.title),
                );
              }).toList();
            },
          ),
        ],
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: Text(
                  widget.chat.title,
                  style: bold_light_20,
                ),
              ),
            ],
          ),
        ),
        elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
      ),
      body: Container(
          child: Column(
            children: <Widget>[
              Flexible(
                child: ListView.builder(
                  padding: EdgeInsets.all(8.0),
                  reverse: true,
                  itemBuilder: (_, int index) {
                    return _messages[index];
                  },
                  itemCount: _messages.length,
                ),
              ),
              Divider(height: 1.0),
              Container(
                decoration: BoxDecoration(color: Theme.of(context).cardColor),
                child: _buildTextComposer(),
              ),
              Builder(builder: (BuildContext context) {
                _scaffoldContext = context;
                return new Container(width: 0.0, height: 0.0);
              })
            ],
          ),
          decoration: Theme.of(context).platform == TargetPlatform.iOS
              ? BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.grey[200])))
              : null), //
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    setState(() {
      _isComposing = false;
    });
    ChatMessage message = ChatMessage(
      message: Message(
          content: text,
          addedOn: DateTime.now(),
          originator: widget.currentUser),
      animationController: AnimationController(
        duration: Duration(milliseconds: 700),
        vsync: this,
      ),
      currentUser: widget.currentUser,
    );
    setState(() {
      _messages.insert(0, message);
    });
    message.animationController.forward();
  }

  void dispose() {
    for (ChatMessage message in _messages)
      message.animationController.dispose();
    super.dispose();
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).accentColor),
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(children: <Widget>[
            Flexible(
              child: TextField(
                controller: _textController,
                onChanged: (String text) {
                  setState(() {
                    _isComposing = text.length > 0;
                  });
                },
                onSubmitted: _handleSubmitted,
                decoration:
                    InputDecoration.collapsed(hintText: "Send a message"),
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 4.0),
                child: Theme.of(context).platform == TargetPlatform.iOS
                    ? CupertinoButton(
                        child: Text("Send"),
                        onPressed: _isComposing
                            ? () => _handleSubmitted(_textController.text)
                            : null,
                      )
                    : IconButton(
                        icon: Icon(Icons.send),
                        onPressed: _isComposing
                            ? () => _handleSubmitted(_textController.text)
                            : null,
                      )),
          ]),
          decoration: Theme.of(context).platform == TargetPlatform.iOS
              ? BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.grey[200])))
              : null),
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Add Participants', icon: Icons.group_add),
  const Choice(title: 'Add Flight', icon: Icons.flight),
];

class ChatMessage extends StatelessWidget {
  ChatMessage({this.message, this.animationController, this.currentUser});
  final Message message;
  final AnimationController animationController;
  final User currentUser;
  final RandomColor ranCol = RandomColor();
  @override
  Widget build(BuildContext context) {
    return SizeTransition(
        sizeFactor:
            CurvedAnimation(parent: animationController, curve: Curves.easeOut),
        axisAlignment: 0.0,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          child: message.originator.userName == currentUser.userName
              ? MessageRowCurrentUser(message: message)
              : MessageRowOtherUser(
                  message: message, color: ranCol.randomColor()),
        ));
  }
}

class MessageRowOtherUser extends StatelessWidget {
  const MessageRowOtherUser({
    Key key,
    @required this.message,
    @required this.color,
  }) : super(key: key);

  final Message message;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(right: 16.0),
          child: CircleAvatar(
              backgroundColor: color,
              child: Text(message.originator.userName[0] +
                  message.originator
                      .userName[message.originator.userName.length - 1])),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(message.originator.userName,
                  style: Theme.of(context).textTheme.subhead),
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: Text(message.content),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MessageRowCurrentUser extends StatelessWidget {
  const MessageRowCurrentUser({
    Key key,
    @required this.message,
  }) : super(key: key);

  final Message message;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(message.originator.userName,
                  style: Theme.of(context).textTheme.subhead),
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: Text(message.content),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 16.0),
          child: CircleAvatar(
              child: Text(message.originator.userName[0] +
                  message.originator
                      .userName[message.originator.userName.length - 1])),
        ),
      ],
    );
  }
}
