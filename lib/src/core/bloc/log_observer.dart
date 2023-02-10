// ignore_for_file: strict_raw_type

import 'dart:developer';

import 'package:bloc/bloc.dart';

class LogObserver extends BlocObserver {
  LogObserver();

  @override
  Future<void> onClose(BlocBase bloc) async {
    super.onClose(bloc);
    log('${bloc.runtimeType}.close()');
  }

  @override
  Future<void> onCreate(BlocBase bloc) async {
    super.onCreate(bloc);
    log('${bloc.runtimeType}()');
  }

  @override
  Future<void> onError(
      BlocBase bloc, Object error, StackTrace stackTrace) async {
    super.onError(bloc, error, stackTrace);
    log('${bloc.runtimeType}', error: error, stackTrace: stackTrace);
  }

  @override
  Future<void> onEvent(Bloc bloc, Object? event) async {
    super.onEvent(bloc, event);
    log('${bloc.runtimeType}.add(${event.runtimeType})');
  }

  @override
  Future<void> onTransition(Bloc bloc, Transition transition) async {
    super.onTransition(bloc, transition);
    final Object? event = transition.event;
    final Object? currentState = transition.currentState;
    final Object? nextState = transition.nextState;
    log('${bloc.runtimeType} ${event.runtimeType}: ${currentState.runtimeType}->${nextState.runtimeType}');
  }
}
