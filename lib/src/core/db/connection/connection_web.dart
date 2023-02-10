import 'package:drift/drift.dart';
import 'package:drift/web.dart';
import 'package:gpt_chatty/src/core/db/app_db.dart';

/// Obtains a database connection for running drift on the web.
AppDB connect() {
  return AppDB(
    LazyDatabase(
      () async => WebDatabase.withStorage(
        await DriftWebStorage.indexedDbIfSupported('db'),
      ),
    ),
  );
}
