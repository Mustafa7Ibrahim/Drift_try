// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCustomerModelCollection on Isar {
  IsarCollection<CustomerModel> get customerModels => this.collection();
}

final CustomerModelSchema = CollectionSchema(
  name: r'CustomerModel',
  id: BigInt.parse("-2515451200106855952").toInt(),
  properties: {
    r'address': PropertySchema(
      id: BigInt.parse("0").toInt(),
      name: r'address',
      type: IsarType.string,
    ),
    r'agentId': PropertySchema(
      id: BigInt.parse("1").toInt(),
      name: r'agentId',
      type: IsarType.long,
    ),
    r'birthDate': PropertySchema(
      id: BigInt.parse("2").toInt(),
      name: r'birthDate',
      type: IsarType.dateTime,
    ),
    r'customerStatus': PropertySchema(
      id: BigInt.parse("3").toInt(),
      name: r'customerStatus',
      type: IsarType.string,
      enumMap: _CustomerModelcustomerStatusEnumValueMap,
    ),
    r'mangerId': PropertySchema(
      id: BigInt.parse("4").toInt(),
      name: r'mangerId',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: BigInt.parse("5").toInt(),
      name: r'name',
      type: IsarType.string,
    ),
    r'submissionStatus': PropertySchema(
      id: BigInt.parse("6").toInt(),
      name: r'submissionStatus',
      type: IsarType.string,
      enumMap: _CustomerModelsubmissionStatusEnumValueMap,
    )
  },
  estimateSize: _customerModelEstimateSize,
  serialize: _customerModelSerialize,
  deserialize: _customerModelDeserialize,
  deserializeProp: _customerModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _customerModelGetId,
  getLinks: _customerModelGetLinks,
  attach: _customerModelAttach,
  version: '3.1.0',
);

int _customerModelEstimateSize(
  CustomerModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.address.length * 3;
  bytesCount += 3 + object.customerStatus.name.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.submissionStatus.name.length * 3;
  return bytesCount;
}

void _customerModelSerialize(
  CustomerModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.address);
  writer.writeLong(offsets[1], object.agentId);
  writer.writeDateTime(offsets[2], object.birthDate);
  writer.writeString(offsets[3], object.customerStatus.name);
  writer.writeLong(offsets[4], object.mangerId);
  writer.writeString(offsets[5], object.name);
  writer.writeString(offsets[6], object.submissionStatus.name);
}

CustomerModel _customerModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CustomerModel(
    address: reader.readString(offsets[0]),
    agentId: reader.readLongOrNull(offsets[1]),
    birthDate: reader.readDateTime(offsets[2]),
    customerStatus: _CustomerModelcustomerStatusValueEnumMap[
            reader.readStringOrNull(offsets[3])] ??
        CustomerStatus.didNotLookAt,
    mangerId: reader.readLongOrNull(offsets[4]),
    name: reader.readString(offsets[5]),
    submissionStatus: _CustomerModelsubmissionStatusValueEnumMap[
            reader.readStringOrNull(offsets[6])] ??
        SubmissionStatus.notSubmit,
  );
  object.id = id;
  return object;
}

P _customerModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (_CustomerModelcustomerStatusValueEnumMap[
              reader.readStringOrNull(offset)] ??
          CustomerStatus.didNotLookAt) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (_CustomerModelsubmissionStatusValueEnumMap[
              reader.readStringOrNull(offset)] ??
          SubmissionStatus.notSubmit) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _CustomerModelcustomerStatusEnumValueMap = {
  r'approved': r'approved',
  r'notApproved': r'notApproved',
  r'didNotLookAt': r'didNotLookAt',
};
const _CustomerModelcustomerStatusValueEnumMap = {
  r'approved': CustomerStatus.approved,
  r'notApproved': CustomerStatus.notApproved,
  r'didNotLookAt': CustomerStatus.didNotLookAt,
};
const _CustomerModelsubmissionStatusEnumValueMap = {
  r'submit': r'submit',
  r'notSubmit': r'notSubmit',
};
const _CustomerModelsubmissionStatusValueEnumMap = {
  r'submit': SubmissionStatus.submit,
  r'notSubmit': SubmissionStatus.notSubmit,
};

Id _customerModelGetId(CustomerModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _customerModelGetLinks(CustomerModel object) {
  return [];
}

void _customerModelAttach(
    IsarCollection<dynamic> col, Id id, CustomerModel object) {
  object.id = id;
}

extension CustomerModelQueryWhereSort
    on QueryBuilder<CustomerModel, CustomerModel, QWhere> {
  QueryBuilder<CustomerModel, CustomerModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CustomerModelQueryWhere
    on QueryBuilder<CustomerModel, CustomerModel, QWhereClause> {
  QueryBuilder<CustomerModel, CustomerModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CustomerModelQueryFilter
    on QueryBuilder<CustomerModel, CustomerModel, QFilterCondition> {
  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      addressEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      addressGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      addressLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      addressBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'address',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      addressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      addressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      addressContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      addressMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'address',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      addressIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address',
        value: '',
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      addressIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'address',
        value: '',
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      agentIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'agentId',
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      agentIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'agentId',
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      agentIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'agentId',
        value: value,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      agentIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'agentId',
        value: value,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      agentIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'agentId',
        value: value,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      agentIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'agentId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      birthDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'birthDate',
        value: value,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      birthDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'birthDate',
        value: value,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      birthDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'birthDate',
        value: value,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      birthDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'birthDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      customerStatusEqualTo(
    CustomerStatus value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      customerStatusGreaterThan(
    CustomerStatus value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      customerStatusLessThan(
    CustomerStatus value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      customerStatusBetween(
    CustomerStatus lower,
    CustomerStatus upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerStatus',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      customerStatusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customerStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      customerStatusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customerStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      customerStatusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      customerStatusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerStatus',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      customerStatusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      customerStatusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      mangerIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mangerId',
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      mangerIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mangerId',
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      mangerIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mangerId',
        value: value,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      mangerIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mangerId',
        value: value,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      mangerIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mangerId',
        value: value,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      mangerIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mangerId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      submissionStatusEqualTo(
    SubmissionStatus value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'submissionStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      submissionStatusGreaterThan(
    SubmissionStatus value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'submissionStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      submissionStatusLessThan(
    SubmissionStatus value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'submissionStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      submissionStatusBetween(
    SubmissionStatus lower,
    SubmissionStatus upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'submissionStatus',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      submissionStatusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'submissionStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      submissionStatusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'submissionStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      submissionStatusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'submissionStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      submissionStatusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'submissionStatus',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      submissionStatusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'submissionStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterFilterCondition>
      submissionStatusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'submissionStatus',
        value: '',
      ));
    });
  }
}

extension CustomerModelQueryObject
    on QueryBuilder<CustomerModel, CustomerModel, QFilterCondition> {}

extension CustomerModelQueryLinks
    on QueryBuilder<CustomerModel, CustomerModel, QFilterCondition> {}

extension CustomerModelQuerySortBy
    on QueryBuilder<CustomerModel, CustomerModel, QSortBy> {
  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy> sortByAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.asc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy> sortByAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.desc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy> sortByAgentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'agentId', Sort.asc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy> sortByAgentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'agentId', Sort.desc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy> sortByBirthDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthDate', Sort.asc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy>
      sortByBirthDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthDate', Sort.desc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy>
      sortByCustomerStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerStatus', Sort.asc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy>
      sortByCustomerStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerStatus', Sort.desc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy> sortByMangerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mangerId', Sort.asc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy>
      sortByMangerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mangerId', Sort.desc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy>
      sortBySubmissionStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submissionStatus', Sort.asc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy>
      sortBySubmissionStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submissionStatus', Sort.desc);
    });
  }
}

extension CustomerModelQuerySortThenBy
    on QueryBuilder<CustomerModel, CustomerModel, QSortThenBy> {
  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy> thenByAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.asc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy> thenByAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.desc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy> thenByAgentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'agentId', Sort.asc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy> thenByAgentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'agentId', Sort.desc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy> thenByBirthDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthDate', Sort.asc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy>
      thenByBirthDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthDate', Sort.desc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy>
      thenByCustomerStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerStatus', Sort.asc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy>
      thenByCustomerStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerStatus', Sort.desc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy> thenByMangerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mangerId', Sort.asc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy>
      thenByMangerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mangerId', Sort.desc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy>
      thenBySubmissionStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submissionStatus', Sort.asc);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QAfterSortBy>
      thenBySubmissionStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'submissionStatus', Sort.desc);
    });
  }
}

extension CustomerModelQueryWhereDistinct
    on QueryBuilder<CustomerModel, CustomerModel, QDistinct> {
  QueryBuilder<CustomerModel, CustomerModel, QDistinct> distinctByAddress(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'address', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QDistinct> distinctByAgentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'agentId');
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QDistinct> distinctByBirthDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'birthDate');
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QDistinct>
      distinctByCustomerStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerStatus',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QDistinct> distinctByMangerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mangerId');
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CustomerModel, CustomerModel, QDistinct>
      distinctBySubmissionStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'submissionStatus',
          caseSensitive: caseSensitive);
    });
  }
}

extension CustomerModelQueryProperty
    on QueryBuilder<CustomerModel, CustomerModel, QQueryProperty> {
  QueryBuilder<CustomerModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CustomerModel, String, QQueryOperations> addressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'address');
    });
  }

  QueryBuilder<CustomerModel, int?, QQueryOperations> agentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'agentId');
    });
  }

  QueryBuilder<CustomerModel, DateTime, QQueryOperations> birthDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'birthDate');
    });
  }

  QueryBuilder<CustomerModel, CustomerStatus, QQueryOperations>
      customerStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerStatus');
    });
  }

  QueryBuilder<CustomerModel, int?, QQueryOperations> mangerIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mangerId');
    });
  }

  QueryBuilder<CustomerModel, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<CustomerModel, SubmissionStatus, QQueryOperations>
      submissionStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'submissionStatus');
    });
  }
}
