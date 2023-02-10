import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:gpt_chatty/src/core/bloc/log_observer.dart';

Future<void> runner(Widget Function() builder) async {
  usePathUrlStrategy();
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Bloc.observer = LogObserver();
  runApp(builder());
}
