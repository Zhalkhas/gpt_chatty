import 'package:gpt_chatty/runner_stub.dart'
    if (dart.library.io) 'package:gpt_chatty/runner_io.dart'
    if (dart.library.html) 'package:gpt_chatty/runner_web.dart';
import 'package:gpt_chatty/src/features/app/widget/app.dart';

Future<void> main() => runner(() => const App());
