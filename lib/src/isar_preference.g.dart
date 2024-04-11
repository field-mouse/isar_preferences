// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_preference.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension Get$IsarPreferenceCollection on Isar {
  IsarCollection<$IsarPreference> get $IsarPreferences => this.collection();
}

const $IsarPreferenceSchema = CollectionSchema(
  name: r'$IsarPreference',
  id: 1740931085856897555,
  properties: {
    r'boolValue': PropertySchema(
      id: 0,
      name: r'boolValue',
      type: IsarType.bool,
    ),
    r'dateTimeValue': PropertySchema(
      id: 1,
      name: r'dateTimeValue',
      type: IsarType.dateTime,
    ),
    r'doubleValue': PropertySchema(
      id: 2,
      name: r'doubleValue',
      type: IsarType.double,
    ),
    r'intValue': PropertySchema(
      id: 3,
      name: r'intValue',
      type: IsarType.long,
    ),
    r'key': PropertySchema(
      id: 4,
      name: r'key',
      type: IsarType.string,
    ),
    r'listBoolValue': PropertySchema(
      id: 5,
      name: r'listBoolValue',
      type: IsarType.boolList,
    ),
    r'listDateTimeValue': PropertySchema(
      id: 6,
      name: r'listDateTimeValue',
      type: IsarType.dateTimeList,
    ),
    r'listDoubleValue': PropertySchema(
      id: 7,
      name: r'listDoubleValue',
      type: IsarType.doubleList,
    ),
    r'listIntValue': PropertySchema(
      id: 8,
      name: r'listIntValue',
      type: IsarType.longList,
    ),
    r'listStringValue': PropertySchema(
      id: 9,
      name: r'listStringValue',
      type: IsarType.stringList,
    ),
    r'stringValue': PropertySchema(
      id: 10,
      name: r'stringValue',
      type: IsarType.string,
    )
  },
  estimateSize: _$IsarPreferenceEstimateSize,
  serialize: _$IsarPreferenceSerialize,
  deserialize: _$IsarPreferenceDeserialize,
  deserializeProp: _$IsarPreferenceDeserializeProp,
  idName: r'id',
  indexes: {
    r'key': IndexSchema(
      id: -4906094122524121629,
      name: r'key',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'key',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _$IsarPreferenceGetId,
  getLinks: _$IsarPreferenceGetLinks,
  attach: _$IsarPreferenceAttach,
  version: '3.1.0+1',
);

int _$IsarPreferenceEstimateSize(
  $IsarPreference object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.key.length * 3;
  {
    final value = object.listBoolValue;
    if (value != null) {
      bytesCount += 3 + value.length;
    }
  }
  {
    final value = object.listDateTimeValue;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.listDoubleValue;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.listIntValue;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final list = object.listStringValue;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.stringValue;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _$IsarPreferenceSerialize(
  $IsarPreference object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.boolValue);
  writer.writeDateTime(offsets[1], object.dateTimeValue);
  writer.writeDouble(offsets[2], object.doubleValue);
  writer.writeLong(offsets[3], object.intValue);
  writer.writeString(offsets[4], object.key);
  writer.writeBoolList(offsets[5], object.listBoolValue);
  writer.writeDateTimeList(offsets[6], object.listDateTimeValue);
  writer.writeDoubleList(offsets[7], object.listDoubleValue);
  writer.writeLongList(offsets[8], object.listIntValue);
  writer.writeStringList(offsets[9], object.listStringValue);
  writer.writeString(offsets[10], object.stringValue);
}

$IsarPreference _$IsarPreferenceDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = $IsarPreference();
  object.boolValue = reader.readBoolOrNull(offsets[0]);
  object.dateTimeValue = reader.readDateTimeOrNull(offsets[1]);
  object.doubleValue = reader.readDoubleOrNull(offsets[2]);
  object.id = id;
  object.intValue = reader.readLongOrNull(offsets[3]);
  object.key = reader.readString(offsets[4]);
  object.listBoolValue = reader.readBoolList(offsets[5]);
  object.listDateTimeValue = reader.readDateTimeList(offsets[6]);
  object.listDoubleValue = reader.readDoubleList(offsets[7]);
  object.listIntValue = reader.readLongList(offsets[8]);
  object.listStringValue = reader.readStringList(offsets[9]);
  object.stringValue = reader.readStringOrNull(offsets[10]);
  return object;
}

P _$IsarPreferenceDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readBoolList(offset)) as P;
    case 6:
      return (reader.readDateTimeList(offset)) as P;
    case 7:
      return (reader.readDoubleList(offset)) as P;
    case 8:
      return (reader.readLongList(offset)) as P;
    case 9:
      return (reader.readStringList(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _$IsarPreferenceGetId($IsarPreference object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _$IsarPreferenceGetLinks($IsarPreference object) {
  return [];
}

void _$IsarPreferenceAttach(
    IsarCollection<dynamic> col, Id id, $IsarPreference object) {
  object.id = id;
}

extension $IsarPreferenceByIndex on IsarCollection<$IsarPreference> {
  Future<$IsarPreference?> getByKey(String key) {
    return getByIndex(r'key', [key]);
  }

  $IsarPreference? getByKeySync(String key) {
    return getByIndexSync(r'key', [key]);
  }

  Future<bool> deleteByKey(String key) {
    return deleteByIndex(r'key', [key]);
  }

  bool deleteByKeySync(String key) {
    return deleteByIndexSync(r'key', [key]);
  }

  Future<List<$IsarPreference?>> getAllByKey(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return getAllByIndex(r'key', values);
  }

  List<$IsarPreference?> getAllByKeySync(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'key', values);
  }

  Future<int> deleteAllByKey(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'key', values);
  }

  int deleteAllByKeySync(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'key', values);
  }

  Future<Id> putByKey($IsarPreference object) {
    return putByIndex(r'key', object);
  }

  Id putByKeySync($IsarPreference object, {bool saveLinks = true}) {
    return putByIndexSync(r'key', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByKey(List<$IsarPreference> objects) {
    return putAllByIndex(r'key', objects);
  }

  List<Id> putAllByKeySync(List<$IsarPreference> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'key', objects, saveLinks: saveLinks);
  }
}

extension $IsarPreferenceQueryWhereSort
    on QueryBuilder<$IsarPreference, $IsarPreference, QWhere> {
  QueryBuilder<$IsarPreference, $IsarPreference, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension $IsarPreferenceQueryWhere
    on QueryBuilder<$IsarPreference, $IsarPreference, QWhereClause> {
  QueryBuilder<$IsarPreference, $IsarPreference, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterWhereClause> idBetween(
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

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterWhereClause> keyEqualTo(
      String key) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'key',
        value: [key],
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterWhereClause>
      keyNotEqualTo(String key) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key',
              lower: [],
              upper: [key],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key',
              lower: [key],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key',
              lower: [key],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key',
              lower: [],
              upper: [key],
              includeUpper: false,
            ));
      }
    });
  }
}

extension $IsarPreferenceQueryFilter
    on QueryBuilder<$IsarPreference, $IsarPreference, QFilterCondition> {
  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      boolValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'boolValue',
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      boolValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'boolValue',
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      boolValueEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'boolValue',
        value: value,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      dateTimeValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dateTimeValue',
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      dateTimeValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dateTimeValue',
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      dateTimeValueEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateTimeValue',
        value: value,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      dateTimeValueGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateTimeValue',
        value: value,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      dateTimeValueLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateTimeValue',
        value: value,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      dateTimeValueBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateTimeValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      doubleValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'doubleValue',
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      doubleValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'doubleValue',
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      doubleValueEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doubleValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      doubleValueGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'doubleValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      doubleValueLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'doubleValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      doubleValueBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'doubleValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
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

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      intValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'intValue',
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      intValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'intValue',
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      intValueEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'intValue',
        value: value,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      intValueGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'intValue',
        value: value,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      intValueLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'intValue',
        value: value,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      intValueBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'intValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      keyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      keyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      keyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      keyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'key',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      keyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      keyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      keyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      keyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'key',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      keyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      keyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listBoolValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'listBoolValue',
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listBoolValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'listBoolValue',
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listBoolValueElementEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'listBoolValue',
        value: value,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listBoolValueLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listBoolValue',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listBoolValueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listBoolValue',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listBoolValueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listBoolValue',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listBoolValueLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listBoolValue',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listBoolValueLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listBoolValue',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listBoolValueLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listBoolValue',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listDateTimeValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'listDateTimeValue',
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listDateTimeValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'listDateTimeValue',
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listDateTimeValueElementEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'listDateTimeValue',
        value: value,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listDateTimeValueElementGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'listDateTimeValue',
        value: value,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listDateTimeValueElementLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'listDateTimeValue',
        value: value,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listDateTimeValueElementBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'listDateTimeValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listDateTimeValueLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listDateTimeValue',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listDateTimeValueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listDateTimeValue',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listDateTimeValueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listDateTimeValue',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listDateTimeValueLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listDateTimeValue',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listDateTimeValueLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listDateTimeValue',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listDateTimeValueLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listDateTimeValue',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listDoubleValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'listDoubleValue',
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listDoubleValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'listDoubleValue',
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listDoubleValueElementEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'listDoubleValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listDoubleValueElementGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'listDoubleValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listDoubleValueElementLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'listDoubleValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listDoubleValueElementBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'listDoubleValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listDoubleValueLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listDoubleValue',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listDoubleValueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listDoubleValue',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listDoubleValueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listDoubleValue',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listDoubleValueLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listDoubleValue',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listDoubleValueLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listDoubleValue',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listDoubleValueLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listDoubleValue',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listIntValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'listIntValue',
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listIntValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'listIntValue',
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listIntValueElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'listIntValue',
        value: value,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listIntValueElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'listIntValue',
        value: value,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listIntValueElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'listIntValue',
        value: value,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listIntValueElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'listIntValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listIntValueLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listIntValue',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listIntValueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listIntValue',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listIntValueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listIntValue',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listIntValueLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listIntValue',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listIntValueLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listIntValue',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listIntValueLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listIntValue',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listStringValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'listStringValue',
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listStringValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'listStringValue',
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listStringValueElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'listStringValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listStringValueElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'listStringValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listStringValueElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'listStringValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listStringValueElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'listStringValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listStringValueElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'listStringValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listStringValueElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'listStringValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listStringValueElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'listStringValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listStringValueElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'listStringValue',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listStringValueElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'listStringValue',
        value: '',
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listStringValueElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'listStringValue',
        value: '',
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listStringValueLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listStringValue',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listStringValueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listStringValue',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listStringValueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listStringValue',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listStringValueLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listStringValue',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listStringValueLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listStringValue',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      listStringValueLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listStringValue',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      stringValueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stringValue',
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      stringValueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stringValue',
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      stringValueEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stringValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      stringValueGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stringValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      stringValueLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stringValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      stringValueBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stringValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      stringValueStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'stringValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      stringValueEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'stringValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      stringValueContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'stringValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      stringValueMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'stringValue',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      stringValueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stringValue',
        value: '',
      ));
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterFilterCondition>
      stringValueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'stringValue',
        value: '',
      ));
    });
  }
}

extension $IsarPreferenceQueryObject
    on QueryBuilder<$IsarPreference, $IsarPreference, QFilterCondition> {}

extension $IsarPreferenceQueryLinks
    on QueryBuilder<$IsarPreference, $IsarPreference, QFilterCondition> {}

extension $IsarPreferenceQuerySortBy
    on QueryBuilder<$IsarPreference, $IsarPreference, QSortBy> {
  QueryBuilder<$IsarPreference, $IsarPreference, QAfterSortBy>
      sortByBoolValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boolValue', Sort.asc);
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterSortBy>
      sortByBoolValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boolValue', Sort.desc);
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterSortBy>
      sortByDateTimeValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTimeValue', Sort.asc);
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterSortBy>
      sortByDateTimeValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTimeValue', Sort.desc);
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterSortBy>
      sortByDoubleValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doubleValue', Sort.asc);
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterSortBy>
      sortByDoubleValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doubleValue', Sort.desc);
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterSortBy>
      sortByIntValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intValue', Sort.asc);
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterSortBy>
      sortByIntValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intValue', Sort.desc);
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterSortBy> sortByKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.asc);
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterSortBy> sortByKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.desc);
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterSortBy>
      sortByStringValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringValue', Sort.asc);
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterSortBy>
      sortByStringValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringValue', Sort.desc);
    });
  }
}

extension $IsarPreferenceQuerySortThenBy
    on QueryBuilder<$IsarPreference, $IsarPreference, QSortThenBy> {
  QueryBuilder<$IsarPreference, $IsarPreference, QAfterSortBy>
      thenByBoolValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boolValue', Sort.asc);
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterSortBy>
      thenByBoolValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'boolValue', Sort.desc);
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterSortBy>
      thenByDateTimeValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTimeValue', Sort.asc);
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterSortBy>
      thenByDateTimeValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTimeValue', Sort.desc);
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterSortBy>
      thenByDoubleValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doubleValue', Sort.asc);
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterSortBy>
      thenByDoubleValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doubleValue', Sort.desc);
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterSortBy>
      thenByIntValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intValue', Sort.asc);
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterSortBy>
      thenByIntValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intValue', Sort.desc);
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterSortBy> thenByKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.asc);
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterSortBy> thenByKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.desc);
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterSortBy>
      thenByStringValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringValue', Sort.asc);
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QAfterSortBy>
      thenByStringValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringValue', Sort.desc);
    });
  }
}

extension $IsarPreferenceQueryWhereDistinct
    on QueryBuilder<$IsarPreference, $IsarPreference, QDistinct> {
  QueryBuilder<$IsarPreference, $IsarPreference, QDistinct>
      distinctByBoolValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'boolValue');
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QDistinct>
      distinctByDateTimeValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateTimeValue');
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QDistinct>
      distinctByDoubleValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'doubleValue');
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QDistinct>
      distinctByIntValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'intValue');
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QDistinct> distinctByKey(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'key', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QDistinct>
      distinctByListBoolValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'listBoolValue');
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QDistinct>
      distinctByListDateTimeValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'listDateTimeValue');
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QDistinct>
      distinctByListDoubleValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'listDoubleValue');
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QDistinct>
      distinctByListIntValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'listIntValue');
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QDistinct>
      distinctByListStringValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'listStringValue');
    });
  }

  QueryBuilder<$IsarPreference, $IsarPreference, QDistinct>
      distinctByStringValue({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stringValue', caseSensitive: caseSensitive);
    });
  }
}

extension $IsarPreferenceQueryProperty
    on QueryBuilder<$IsarPreference, $IsarPreference, QQueryProperty> {
  QueryBuilder<$IsarPreference, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<$IsarPreference, bool?, QQueryOperations> boolValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'boolValue');
    });
  }

  QueryBuilder<$IsarPreference, DateTime?, QQueryOperations>
      dateTimeValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateTimeValue');
    });
  }

  QueryBuilder<$IsarPreference, double?, QQueryOperations>
      doubleValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'doubleValue');
    });
  }

  QueryBuilder<$IsarPreference, int?, QQueryOperations> intValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'intValue');
    });
  }

  QueryBuilder<$IsarPreference, String, QQueryOperations> keyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'key');
    });
  }

  QueryBuilder<$IsarPreference, List<bool>?, QQueryOperations>
      listBoolValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'listBoolValue');
    });
  }

  QueryBuilder<$IsarPreference, List<DateTime>?, QQueryOperations>
      listDateTimeValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'listDateTimeValue');
    });
  }

  QueryBuilder<$IsarPreference, List<double>?, QQueryOperations>
      listDoubleValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'listDoubleValue');
    });
  }

  QueryBuilder<$IsarPreference, List<int>?, QQueryOperations>
      listIntValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'listIntValue');
    });
  }

  QueryBuilder<$IsarPreference, List<String>?, QQueryOperations>
      listStringValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'listStringValue');
    });
  }

  QueryBuilder<$IsarPreference, String?, QQueryOperations>
      stringValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stringValue');
    });
  }
}
