export 'connection_stub.dart'
    if (dart.library.io) 'connection_io.dart'
    if (dart.library.html) 'connection_web.dart';
