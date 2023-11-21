import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:drift/wasm.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:madkour_task/modules/admin/models/agent_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

part 'database.g.dart';

///
@DriftDatabase(tables: [AgentsModel])
class MyDatabase extends _$MyDatabase {
  ///
  MyDatabase() : super(_openConnection()!);

  @override
  int get schemaVersion => 1;
}

/// check if the platform is web or not
/// if it is web then use wasm database
/// else use native database
LazyDatabase? _openConnection() {
  if (kIsWeb) {
    return LazyDatabase(() async {
      final executor = _connectOnWeb();
      return executor;
    });
  } else {
    return null;
    // return _openConnectionNative();
  }
}

///
// LazyDatabase _openConnectionNative() {
//   return LazyDatabase(() async {
//     final dbFolder = await getApplicationDocumentsDirectory();
//     final file = File(join(dbFolder.path, 'db.sqlite'));

//     return NativeDatabase.createInBackground(file);
//   });
// }

///
DatabaseConnection _connectOnWeb() {
  return DatabaseConnection.delayed(
    Future(() async {
      final result = await WasmDatabase.open(
        databaseName: 'my_app_db', // prefer to only use valid identifiers here
        sqlite3Uri: Uri.parse('sqlite3.wasm'),
        driftWorkerUri: Uri.parse('drift_worker.dart.js'),
      );

      if (result.missingFeatures.isNotEmpty) {
        // Depending how central local persistence is to your app, you may want
        // to show a warning to the user if only unrealiable implemetentations
        // are available.
        print('Using ${result.chosenImplementation} due to missing browser '
            'features: ${result.missingFeatures}');
      }

      return result.resolvedExecutor;
    }),
  );
}
