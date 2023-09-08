import 'package:isar/isar.dart';

part 'agent_model.g.dart';

/// a model for admin that contain a name and a role
@Collection()
class AgentModel {
  /// const constructor for the admin model.
  AgentModel({
    required this.name,
    required this.role,
  });

  /// id
  Id id = Isar.autoIncrement;

  /// the name of the admin.
  final String name;

  /// the role of the admin.
  @Enumerated(EnumType.name)
  final Role role;
}

/// role class for agent
enum Role {
  /// manager
  manager,

  /// agent
  agent,
}
