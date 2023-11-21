import 'package:drift/drift.dart' as d;

/// a model for admin that contain a name and a role
class AgentModel {
  /// const constructor for the admin model.
  AgentModel({
    required this.name,
    required this.role,
    this.id,
    this.agentFata,
  });

  /// id
  final int? id;

  /// the name of the admin.
  final String name;

  /// the role of the admin.
  final Role role;

  /// agent fata
  final AgentFata? agentFata;
}

/// a model for admin that contain a name and a role
class AgentFata {
  /// const constructor for the admin model.
  AgentFata({
    required this.name,
    required this.role,
    this.id,
  });

  ///
  final int? id;

  ///
  final String name;

  ///
  final Role role;
}

/// role class for agent
enum Role {
  /// manager
  manager, // 0

  /// agent
  agent, // 1
}

/// drift example for database
@d.UseRowClass(AgentModel)
class AgentsModel extends d.Table {
  /// agent id
  d.IntColumn get id => integer().autoIncrement()();

  /// agent fata
  // d.IntColumn get agentFata => integer().nullable().references( );

  /// agent name
  d.TextColumn get name => text()();

  /// agent role
  d.IntColumn get role => intEnum<Role>()();
}
