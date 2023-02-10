// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_messages_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatMessagesState {
  int get chatID => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatMessagesStateCopyWith<ChatMessagesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessagesStateCopyWith<$Res> {
  factory $ChatMessagesStateCopyWith(
          ChatMessagesState value, $Res Function(ChatMessagesState) then) =
      _$ChatMessagesStateCopyWithImpl<$Res, ChatMessagesState>;
  @useResult
  $Res call({int chatID, List<Message> messages});
}

/// @nodoc
class _$ChatMessagesStateCopyWithImpl<$Res, $Val extends ChatMessagesState>
    implements $ChatMessagesStateCopyWith<$Res> {
  _$ChatMessagesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatID = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      chatID: null == chatID
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as int,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatsListStateCopyWith<$Res>
    implements $ChatMessagesStateCopyWith<$Res> {
  factory _$$_ChatsListStateCopyWith(
          _$_ChatsListState value, $Res Function(_$_ChatsListState) then) =
      __$$_ChatsListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int chatID, List<Message> messages});
}

/// @nodoc
class __$$_ChatsListStateCopyWithImpl<$Res>
    extends _$ChatMessagesStateCopyWithImpl<$Res, _$_ChatsListState>
    implements _$$_ChatsListStateCopyWith<$Res> {
  __$$_ChatsListStateCopyWithImpl(
      _$_ChatsListState _value, $Res Function(_$_ChatsListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatID = null,
    Object? messages = null,
  }) {
    return _then(_$_ChatsListState(
      null == chatID
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as int,
      null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$_ChatsListState implements _ChatsListState {
  const _$_ChatsListState(this.chatID, final List<Message> messages)
      : _messages = messages;

  @override
  final int chatID;
  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatMessagesState(chatID: $chatID, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatsListState &&
            (identical(other.chatID, chatID) || other.chatID == chatID) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, chatID, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatsListStateCopyWith<_$_ChatsListState> get copyWith =>
      __$$_ChatsListStateCopyWithImpl<_$_ChatsListState>(this, _$identity);
}

abstract class _ChatsListState implements ChatMessagesState {
  const factory _ChatsListState(
      final int chatID, final List<Message> messages) = _$_ChatsListState;

  @override
  int get chatID;
  @override
  List<Message> get messages;
  @override
  @JsonKey(ignore: true)
  _$$_ChatsListStateCopyWith<_$_ChatsListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatMessagesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Message> messages) messagesListUpdated,
    required TResult Function(String text) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Message> messages)? messagesListUpdated,
    TResult? Function(String text)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Message> messages)? messagesListUpdated,
    TResult Function(String text)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_messagesListUpdated value) messagesListUpdated,
    required TResult Function(_sendMessage value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_messagesListUpdated value)? messagesListUpdated,
    TResult? Function(_sendMessage value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_messagesListUpdated value)? messagesListUpdated,
    TResult Function(_sendMessage value)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessagesEventCopyWith<$Res> {
  factory $ChatMessagesEventCopyWith(
          ChatMessagesEvent value, $Res Function(ChatMessagesEvent) then) =
      _$ChatMessagesEventCopyWithImpl<$Res, ChatMessagesEvent>;
}

/// @nodoc
class _$ChatMessagesEventCopyWithImpl<$Res, $Val extends ChatMessagesEvent>
    implements $ChatMessagesEventCopyWith<$Res> {
  _$ChatMessagesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_messagesListUpdatedCopyWith<$Res> {
  factory _$$_messagesListUpdatedCopyWith(_$_messagesListUpdated value,
          $Res Function(_$_messagesListUpdated) then) =
      __$$_messagesListUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Message> messages});
}

/// @nodoc
class __$$_messagesListUpdatedCopyWithImpl<$Res>
    extends _$ChatMessagesEventCopyWithImpl<$Res, _$_messagesListUpdated>
    implements _$$_messagesListUpdatedCopyWith<$Res> {
  __$$_messagesListUpdatedCopyWithImpl(_$_messagesListUpdated _value,
      $Res Function(_$_messagesListUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$_messagesListUpdated(
      null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$_messagesListUpdated implements _messagesListUpdated {
  const _$_messagesListUpdated(final List<Message> messages)
      : _messages = messages;

  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatMessagesEvent.messagesListUpdated(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_messagesListUpdated &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_messagesListUpdatedCopyWith<_$_messagesListUpdated> get copyWith =>
      __$$_messagesListUpdatedCopyWithImpl<_$_messagesListUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Message> messages) messagesListUpdated,
    required TResult Function(String text) sendMessage,
  }) {
    return messagesListUpdated(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Message> messages)? messagesListUpdated,
    TResult? Function(String text)? sendMessage,
  }) {
    return messagesListUpdated?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Message> messages)? messagesListUpdated,
    TResult Function(String text)? sendMessage,
    required TResult orElse(),
  }) {
    if (messagesListUpdated != null) {
      return messagesListUpdated(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_messagesListUpdated value) messagesListUpdated,
    required TResult Function(_sendMessage value) sendMessage,
  }) {
    return messagesListUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_messagesListUpdated value)? messagesListUpdated,
    TResult? Function(_sendMessage value)? sendMessage,
  }) {
    return messagesListUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_messagesListUpdated value)? messagesListUpdated,
    TResult Function(_sendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (messagesListUpdated != null) {
      return messagesListUpdated(this);
    }
    return orElse();
  }
}

abstract class _messagesListUpdated implements ChatMessagesEvent {
  const factory _messagesListUpdated(final List<Message> messages) =
      _$_messagesListUpdated;

  List<Message> get messages;
  @JsonKey(ignore: true)
  _$$_messagesListUpdatedCopyWith<_$_messagesListUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_sendMessageCopyWith<$Res> {
  factory _$$_sendMessageCopyWith(
          _$_sendMessage value, $Res Function(_$_sendMessage) then) =
      __$$_sendMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_sendMessageCopyWithImpl<$Res>
    extends _$ChatMessagesEventCopyWithImpl<$Res, _$_sendMessage>
    implements _$$_sendMessageCopyWith<$Res> {
  __$$_sendMessageCopyWithImpl(
      _$_sendMessage _value, $Res Function(_$_sendMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_sendMessage(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_sendMessage implements _sendMessage {
  const _$_sendMessage(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ChatMessagesEvent.sendMessage(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_sendMessage &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_sendMessageCopyWith<_$_sendMessage> get copyWith =>
      __$$_sendMessageCopyWithImpl<_$_sendMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Message> messages) messagesListUpdated,
    required TResult Function(String text) sendMessage,
  }) {
    return sendMessage(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Message> messages)? messagesListUpdated,
    TResult? Function(String text)? sendMessage,
  }) {
    return sendMessage?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Message> messages)? messagesListUpdated,
    TResult Function(String text)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_messagesListUpdated value) messagesListUpdated,
    required TResult Function(_sendMessage value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_messagesListUpdated value)? messagesListUpdated,
    TResult? Function(_sendMessage value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_messagesListUpdated value)? messagesListUpdated,
    TResult Function(_sendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _sendMessage implements ChatMessagesEvent {
  const factory _sendMessage(final String text) = _$_sendMessage;

  String get text;
  @JsonKey(ignore: true)
  _$$_sendMessageCopyWith<_$_sendMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
