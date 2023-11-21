// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $AgentsModelTable extends AgentsModel
    with TableInfo<$AgentsModelTable, AgentModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AgentsModelTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _roleMeta = const VerificationMeta('role');
  @override
  late final GeneratedColumnWithTypeConverter<Role, int> role =
      GeneratedColumn<int>('role', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<Role>($AgentsModelTable.$converterrole);
  @override
  List<GeneratedColumn> get $columns => [id, name, role];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'agents_model';
  @override
  VerificationContext validateIntegrity(Insertable<AgentModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    context.handle(_roleMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AgentModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AgentModel(
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      role: $AgentsModelTable.$converterrole.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}role'])!),
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
    );
  }

  @override
  $AgentsModelTable createAlias(String alias) {
    return $AgentsModelTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<Role, int, int> $converterrole =
      const EnumIndexConverter<Role>(Role.values);
}

class AgentsModelCompanion extends UpdateCompanion<AgentModel> {
  final Value<int> id;
  final Value<String> name;
  final Value<Role> role;
  const AgentsModelCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.role = const Value.absent(),
  });
  AgentsModelCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required Role role,
  })  : name = Value(name),
        role = Value(role);
  static Insertable<AgentModel> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? role,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (role != null) 'role': role,
    });
  }

  AgentsModelCompanion copyWith(
      {Value<int>? id, Value<String>? name, Value<Role>? role}) {
    return AgentsModelCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      role: role ?? this.role,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (role.present) {
      final converter = $AgentsModelTable.$converterrole;

      map['role'] = Variable<int>(converter.toSql(role.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AgentsModelCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('role: $role')
          ..write(')'))
        .toString();
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  late final $AgentsModelTable agentsModel = $AgentsModelTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [agentsModel];
}
