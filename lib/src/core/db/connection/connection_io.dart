import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:gpt_chatty/src/core/db/app_db.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

/// Obtains a database connection for running drift in a Dart VM.
AppDB connect() {
  final db = LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
  return AppDB(db);
}
