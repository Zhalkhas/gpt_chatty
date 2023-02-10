import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:gpt_chatty/src/core/bloc/log_observer.dart';
import 'package:logging/logging.dart';

Future<void> runner(Widget Function() builder) async {
  Logger.root.onRecord.listen((record) {
    log(
      record.message,
      name: record.loggerName,
      level: record.level.value,
    );
  });
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Bloc.observer = LogObserver();
  runApp(builder());
}
