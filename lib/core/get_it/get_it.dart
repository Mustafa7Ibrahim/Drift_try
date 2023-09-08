import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:madkour_task/modules/admin/database/admin_database.dart';
import 'package:madkour_task/modules/admin/models/agent_model.dart';
import 'package:madkour_task/modules/agent/database/agent_database.dart';
import 'package:madkour_task/modules/agent/models/customer_model.dart';
import 'package:madkour_task/modules/manager/database/manager_database.dart';
import 'package:path_provider/path_provider.dart';

/// GetIt is a simple service locator for Dart and Flutter projects. [GetIt]
final gi = GetIt.instance;

/// This function is used to initialize the [GetIt] instance.
Future<void> initGetIt() async {
  // init isar
  final isar = await Isar.open(
    [
      AgentModelSchema,
      CustomerModelSchema,
    ],
    directory: await getApplicationCacheDirectory().then(
      (value) => value.path,
    ),
  );

  /// Registering the [Isar] instance.
  gi
    ..registerLazySingleton<Isar>(() => isar)
    ..registerLazySingleton(AdminDatabase.new)
    ..registerLazySingleton(AgentDatabase.new)
    ..registerLazySingleton(ManagerDatabase.new);
}
