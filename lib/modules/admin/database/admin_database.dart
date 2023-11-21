import 'package:drift/drift.dart';
import 'package:madkour_task/core/database.dart';
import 'package:madkour_task/modules/admin/models/agent_model.dart';

/// Database for admin
class AdminDatabase {
  /// const constructor for the admin database.
  const AdminDatabase(this.db);

  /// create a new instance of [AdminDatabase]
  final MyDatabase db;

  /// insert agent
  Future<void> insertAgent(AgentModel agent) async {
    /// convert agent to agent model companion

    final agentCo = AgentsModelCompanion(
      name: Value(agent.name),
      role: Value(agent.role),
    );

    await db.into(db.agentsModel).insert(agentCo);
  }

  /// get all agents
  Future<List<AgentModel>> get allAgentsItems => db.agentsModel.select().get();

  /// get all agents as a stream
  Stream<List<AgentModel>> get allAgentsStream =>
      db.agentsModel.select().watch();

  /// delete agent
  Future<void> deleteAgent(int id) async {
    await (db.delete(db.agentsModel)..where((tbl) => tbl.id.equals(id))).go();
  }

  /// update agent
  Future<void> updateAgent(AgentsModelCompanion agent) async {
    await (db.update(db.agentsModel)
          ..where((tbl) => tbl.id.equals(agent.id.value)))
        .write(agent);
  }

  /// get agent by id
  Future<AgentModel?> getAgentById(int id) async {
    final agent = await (db.select(db.agentsModel)
          ..where((tbl) => tbl.id.equals(id)))
        .getSingle();
    if (agent.role != Role.manager) {
      return null;
    }
    return agent;
  }
}
