// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chats_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatsListState {
  List<Chat> get chats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatsListStateCopyWith<ChatsListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsListStateCopyWith<$Res> {
  factory $ChatsListStateCopyWith(
          ChatsListState value, $Res Function(ChatsListState) then) =
      _$ChatsListStateCopyWithImpl<$Res, ChatsListState>;
  @useResult
  $Res call({List<Chat> chats});
}

/// @nodoc
class _$ChatsListStateCopyWithImpl<$Res, $Val extends ChatsListState>
    implements $ChatsListStateCopyWith<$Res> {
  _$ChatsListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
  }) {
    return _then(_value.copyWith(
      chats: null == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatsListStateCopyWith<$Res>
    implements $ChatsListStateCopyWith<$Res> {
  factory _$$_ChatsListStateCopyWith(
          _$_ChatsListState value, $Res Function(_$_ChatsListState) then) =
      __$$_ChatsListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Chat> chats});
}

/// @nodoc
class __$$_ChatsListStateCopyWithImpl<$Res>
    extends _$ChatsListStateCopyWithImpl<$Res, _$_ChatsListState>
    implements _$$_ChatsListStateCopyWith<$Res> {
  __$$_ChatsListStateCopyWithImpl(
      _$_ChatsListState _value, $Res Function(_$_ChatsListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
  }) {
    return _then(_$_ChatsListState(
      null == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
    ));
  }
}

/// @nodoc

class _$_ChatsListState implements _ChatsListState {
  const _$_ChatsListState(final List<Chat> chats) : _chats = chats;

  final List<Chat> _chats;
  @override
  List<Chat> get chats {
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  @override
  String toString() {
    return 'ChatsListState(chats: $chats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatsListState &&
            const DeepCollectionEquality().equals(other._chats, _chats));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_chats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatsListStateCopyWith<_$_ChatsListState> get copyWith =>
      __$$_ChatsListStateCopyWithImpl<_$_ChatsListState>(this, _$identity);
}

abstract class _ChatsListState implements ChatsListState {
  const factory _ChatsListState(final List<Chat> chats) = _$_ChatsListState;

  @override
  List<Chat> get chats;
  @override
  @JsonKey(ignore: true)
  _$$_ChatsListStateCopyWith<_$_ChatsListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatsListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Chat> chats) chatsListUpdated,
    required TResult Function(String name) addChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Chat> chats)? chatsListUpdated,
    TResult? Function(String name)? addChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Chat> chats)? chatsListUpdated,
    TResult Function(String name)? addChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_chatsListUpdated value) chatsListUpdated,
    required TResult Function(_addChat value) addChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_chatsListUpdated value)? chatsListUpdated,
    TResult? Function(_addChat value)? addChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_chatsListUpdated value)? chatsListUpdated,
    TResult Function(_addChat value)? addChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsListEventCopyWith<$Res> {
  factory $ChatsListEventCopyWith(
          ChatsListEvent value, $Res Function(ChatsListEvent) then) =
      _$ChatsListEventCopyWithImpl<$Res, ChatsListEvent>;
}

/// @nodoc
class _$ChatsListEventCopyWithImpl<$Res, $Val extends ChatsListEvent>
    implements $ChatsListEventCopyWith<$Res> {
  _$ChatsListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_chatsListUpdatedCopyWith<$Res> {
  factory _$$_chatsListUpdatedCopyWith(
          _$_chatsListUpdated value, $Res Function(_$_chatsListUpdated) then) =
      __$$_chatsListUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Chat> chats});
}

/// @nodoc
class __$$_chatsListUpdatedCopyWithImpl<$Res>
    extends _$ChatsListEventCopyWithImpl<$Res, _$_chatsListUpdated>
    implements _$$_chatsListUpdatedCopyWith<$Res> {
  __$$_chatsListUpdatedCopyWithImpl(
      _$_chatsListUpdated _value, $Res Function(_$_chatsListUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
  }) {
    return _then(_$_chatsListUpdated(
      null == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
    ));
  }
}

/// @nodoc

class _$_chatsListUpdated implements _chatsListUpdated {
  const _$_chatsListUpdated(final List<Chat> chats) : _chats = chats;

  final List<Chat> _chats;
  @override
  List<Chat> get chats {
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  @override
  String toString() {
    return 'ChatsListEvent.chatsListUpdated(chats: $chats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_chatsListUpdated &&
            const DeepCollectionEquality().equals(other._chats, _chats));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_chats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_chatsListUpdatedCopyWith<_$_chatsListUpdated> get copyWith =>
      __$$_chatsListUpdatedCopyWithImpl<_$_chatsListUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Chat> chats) chatsListUpdated,
    required TResult Function(String name) addChat,
  }) {
    return chatsListUpdated(chats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Chat> chats)? chatsListUpdated,
    TResult? Function(String name)? addChat,
  }) {
    return chatsListUpdated?.call(chats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Chat> chats)? chatsListUpdated,
    TResult Function(String name)? addChat,
    required TResult orElse(),
  }) {
    if (chatsListUpdated != null) {
      return chatsListUpdated(chats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_chatsListUpdated value) chatsListUpdated,
    required TResult Function(_addChat value) addChat,
  }) {
    return chatsListUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_chatsListUpdated value)? chatsListUpdated,
    TResult? Function(_addChat value)? addChat,
  }) {
    return chatsListUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_chatsListUpdated value)? chatsListUpdated,
    TResult Function(_addChat value)? addChat,
    required TResult orElse(),
  }) {
    if (chatsListUpdated != null) {
      return chatsListUpdated(this);
    }
    return orElse();
  }
}

abstract class _chatsListUpdated implements ChatsListEvent {
  const factory _chatsListUpdated(final List<Chat> chats) = _$_chatsListUpdated;

  List<Chat> get chats;
  @JsonKey(ignore: true)
  _$$_chatsListUpdatedCopyWith<_$_chatsListUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_addChatCopyWith<$Res> {
  factory _$$_addChatCopyWith(
          _$_addChat value, $Res Function(_$_addChat) then) =
      __$$_addChatCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_addChatCopyWithImpl<$Res>
    extends _$ChatsListEventCopyWithImpl<$Res, _$_addChat>
    implements _$$_addChatCopyWith<$Res> {
  __$$_addChatCopyWithImpl(_$_addChat _value, $Res Function(_$_addChat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_addChat(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_addChat implements _addChat {
  const _$_addChat(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'ChatsListEvent.addChat(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_addChat &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_addChatCopyWith<_$_addChat> get copyWith =>
      __$$_addChatCopyWithImpl<_$_addChat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Chat> chats) chatsListUpdated,
    required TResult Function(String name) addChat,
  }) {
    return addChat(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Chat> chats)? chatsListUpdated,
    TResult? Function(String name)? addChat,
  }) {
    return addChat?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Chat> chats)? chatsListUpdated,
    TResult Function(String name)? addChat,
    required TResult orElse(),
  }) {
    if (addChat != null) {
      return addChat(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_chatsListUpdated value) chatsListUpdated,
    required TResult Function(_addChat value) addChat,
  }) {
    return addChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_chatsListUpdated value)? chatsListUpdated,
    TResult? Function(_addChat value)? addChat,
  }) {
    return addChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_chatsListUpdated value)? chatsListUpdated,
    TResult Function(_addChat value)? addChat,
    required TResult orElse(),
  }) {
    if (addChat != null) {
      return addChat(this);
    }
    return orElse();
  }
}

abstract class _addChat implements ChatsListEvent {
  const factory _addChat(final String name) = _$_addChat;

  String get name;
  @JsonKey(ignore: true)
  _$$_addChatCopyWith<_$_addChat> get copyWith =>
      throw _privateConstructorUsedError;
}
