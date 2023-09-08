import 'package:isar/isar.dart';
import 'package:madkour_task/core/get_it/get_it.dart';
import 'package:madkour_task/modules/admin/models/agent_model.dart';

/// Database for admin
class AdminDatabase {
  final _isar = gi<Isar>().agentModels;

  /// get all cart pharmacy
  Stream<List<AgentModel>> getAllUsers() {
    final list = _isar.where().build();
    final watchPharmacies = list.watch(fireImmediately: true);
    return watchPharmacies;
  }

  /// add new agent
  Future<void> addAgent(AgentModel agentModel) async {
    await gi<Isar>().writeTxn(() async {
      await _isar.put(agentModel);
    });
  }
}
