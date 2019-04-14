import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter/material.dart';

part 'chat_model.g.dart';

abstract class Chat implements Built<Chat, ChatBuilder> {
  //static Serializer<Chat> get serializer => _$chatSerializer;
  String get title;
  @nullable
  BuiltSet<String> get participants;
  @nullable
  BuiltSet<String> get messages;

  factory Chat([updates(ChatBuilder b)]) = _$Chat;
  Chat._();
}
