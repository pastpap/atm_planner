// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Chat extends Chat {
  @override
  final String title;
  @override
  final BuiltSet<User> participants;
  @override
  final BuiltList<Message> messages;

  factory _$Chat([void Function(ChatBuilder) updates]) =>
      (new ChatBuilder()..update(updates)).build();

  _$Chat._({this.title, this.participants, this.messages}) : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('Chat', 'title');
    }
  }

  @override
  Chat rebuild(void Function(ChatBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatBuilder toBuilder() => new ChatBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Chat &&
        title == other.title &&
        participants == other.participants &&
        messages == other.messages;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, title.hashCode), participants.hashCode), messages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Chat')
          ..add('title', title)
          ..add('participants', participants)
          ..add('messages', messages))
        .toString();
  }
}

class ChatBuilder implements Builder<Chat, ChatBuilder> {
  _$Chat _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  SetBuilder<User> _participants;
  SetBuilder<User> get participants =>
      _$this._participants ??= new SetBuilder<User>();
  set participants(SetBuilder<User> participants) =>
      _$this._participants = participants;

  ListBuilder<Message> _messages;
  ListBuilder<Message> get messages =>
      _$this._messages ??= new ListBuilder<Message>();
  set messages(ListBuilder<Message> messages) => _$this._messages = messages;

  ChatBuilder();

  ChatBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _participants = _$v.participants?.toBuilder();
      _messages = _$v.messages?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Chat other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Chat;
  }

  @override
  void update(void Function(ChatBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Chat build() {
    _$Chat _$result;
    try {
      _$result = _$v ??
          new _$Chat._(
              title: title,
              participants: _participants?.build(),
              messages: _messages?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'participants';
        _participants?.build();
        _$failedField = 'messages';
        _messages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Chat', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
