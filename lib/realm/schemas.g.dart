// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schemas.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class Password extends _Password
    with RealmEntity, RealmObjectBase, RealmObject {
  Password(
    ObjectId id,
    String title,
    String password,
  ) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'title', title);
    RealmObjectBase.set(this, 'password', password);
  }

  Password._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, '_id', value);

  @override
  String get title => RealmObjectBase.get<String>(this, 'title') as String;
  @override
  set title(String value) => RealmObjectBase.set(this, 'title', value);

  @override
  String get password =>
      RealmObjectBase.get<String>(this, 'password') as String;
  @override
  set password(String value) => RealmObjectBase.set(this, 'password', value);

  @override
  Stream<RealmObjectChanges<Password>> get changes =>
      RealmObjectBase.getChanges<Password>(this);

  @override
  Password freeze() => RealmObjectBase.freezeObject<Password>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Password._);
    return const SchemaObject(ObjectType.realmObject, Password, 'Password', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', primaryKey: true),
      SchemaProperty('title', RealmPropertyType.string),
      SchemaProperty('password', RealmPropertyType.string),
    ]);
  }
}

class BankName extends _BankName
    with RealmEntity, RealmObjectBase, RealmObject {
  BankName(
    ObjectId id,
    String title,
    String bankName,
    String bankBranch,
    String bankAccountNumber,
    String memo,
  ) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'title', title);
    RealmObjectBase.set(this, 'bankName', bankName);
    RealmObjectBase.set(this, 'bankBranch', bankBranch);
    RealmObjectBase.set(this, 'bankAccountNumber', bankAccountNumber);
    RealmObjectBase.set(this, 'memo', memo);
  }

  BankName._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, '_id', value);

  @override
  String get title => RealmObjectBase.get<String>(this, 'title') as String;
  @override
  set title(String value) => RealmObjectBase.set(this, 'title', value);

  @override
  String get bankName =>
      RealmObjectBase.get<String>(this, 'bankName') as String;
  @override
  set bankName(String value) => RealmObjectBase.set(this, 'bankName', value);

  @override
  String get bankBranch =>
      RealmObjectBase.get<String>(this, 'bankBranch') as String;
  @override
  set bankBranch(String value) =>
      RealmObjectBase.set(this, 'bankBranch', value);

  @override
  String get bankAccountNumber =>
      RealmObjectBase.get<String>(this, 'bankAccountNumber') as String;
  @override
  set bankAccountNumber(String value) =>
      RealmObjectBase.set(this, 'bankAccountNumber', value);

  @override
  String get memo => RealmObjectBase.get<String>(this, 'memo') as String;
  @override
  set memo(String value) => RealmObjectBase.set(this, 'memo', value);

  @override
  Stream<RealmObjectChanges<BankName>> get changes =>
      RealmObjectBase.getChanges<BankName>(this);

  @override
  BankName freeze() => RealmObjectBase.freezeObject<BankName>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(BankName._);
    return const SchemaObject(ObjectType.realmObject, BankName, 'BankName', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', primaryKey: true),
      SchemaProperty('title', RealmPropertyType.string),
      SchemaProperty('bankName', RealmPropertyType.string),
      SchemaProperty('bankBranch', RealmPropertyType.string),
      SchemaProperty('bankAccountNumber', RealmPropertyType.string),
      SchemaProperty('memo', RealmPropertyType.string),
    ]);
  }
}

class IDPASS extends _IDPASS with RealmEntity, RealmObjectBase, RealmObject {
  IDPASS(
    ObjectId id,
    String title,
    String ID,
    String PASS,
    String memo,
  ) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'title', title);
    RealmObjectBase.set(this, 'ID', ID);
    RealmObjectBase.set(this, 'PASS', PASS);
    RealmObjectBase.set(this, 'memo', memo);
  }

  IDPASS._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, '_id', value);

  @override
  String get title => RealmObjectBase.get<String>(this, 'title') as String;
  @override
  set title(String value) => RealmObjectBase.set(this, 'title', value);

  @override
  String get ID => RealmObjectBase.get<String>(this, 'ID') as String;
  @override
  set ID(String value) => RealmObjectBase.set(this, 'ID', value);

  @override
  String get PASS => RealmObjectBase.get<String>(this, 'PASS') as String;
  @override
  set PASS(String value) => RealmObjectBase.set(this, 'PASS', value);

  @override
  String get memo => RealmObjectBase.get<String>(this, 'memo') as String;
  @override
  set memo(String value) => RealmObjectBase.set(this, 'memo', value);

  @override
  Stream<RealmObjectChanges<IDPASS>> get changes =>
      RealmObjectBase.getChanges<IDPASS>(this);

  @override
  IDPASS freeze() => RealmObjectBase.freezeObject<IDPASS>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(IDPASS._);
    return const SchemaObject(ObjectType.realmObject, IDPASS, 'IDPASS', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', primaryKey: true),
      SchemaProperty('title', RealmPropertyType.string),
      SchemaProperty('ID', RealmPropertyType.string),
      SchemaProperty('PASS', RealmPropertyType.string),
      SchemaProperty('memo', RealmPropertyType.string),
    ]);
  }
}

class MembershipNumber extends _MembershipNumber
    with RealmEntity, RealmObjectBase, RealmObject {
  MembershipNumber(
    ObjectId id,
    String title,
    int membershipNumber,
    String memo,
  ) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'title', title);
    RealmObjectBase.set(this, 'membershipNumber', membershipNumber);
    RealmObjectBase.set(this, 'memo', memo);
  }

  MembershipNumber._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, '_id', value);

  @override
  String get title => RealmObjectBase.get<String>(this, 'title') as String;
  @override
  set title(String value) => RealmObjectBase.set(this, 'title', value);

  @override
  int get membershipNumber =>
      RealmObjectBase.get<int>(this, 'membershipNumber') as int;
  @override
  set membershipNumber(int value) =>
      RealmObjectBase.set(this, 'membershipNumber', value);

  @override
  String get memo => RealmObjectBase.get<String>(this, 'memo') as String;
  @override
  set memo(String value) => RealmObjectBase.set(this, 'memo', value);

  @override
  Stream<RealmObjectChanges<MembershipNumber>> get changes =>
      RealmObjectBase.getChanges<MembershipNumber>(this);

  @override
  MembershipNumber freeze() =>
      RealmObjectBase.freezeObject<MembershipNumber>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(MembershipNumber._);
    return const SchemaObject(
        ObjectType.realmObject, MembershipNumber, 'MembershipNumber', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', primaryKey: true),
      SchemaProperty('title', RealmPropertyType.string),
      SchemaProperty('membershipNumber', RealmPropertyType.int),
      SchemaProperty('memo', RealmPropertyType.string),
    ]);
  }
}

class Credit extends _Credit with RealmEntity, RealmObjectBase, RealmObject {
  Credit(
    ObjectId id,
    String title,
    int cardNumber,
    int CVC,
    String memo,
  ) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'title', title);
    RealmObjectBase.set(this, 'cardNumber', cardNumber);
    RealmObjectBase.set(this, 'CVC', CVC);
    RealmObjectBase.set(this, 'memo', memo);
  }

  Credit._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, '_id', value);

  @override
  String get title => RealmObjectBase.get<String>(this, 'title') as String;
  @override
  set title(String value) => RealmObjectBase.set(this, 'title', value);

  @override
  int get cardNumber => RealmObjectBase.get<int>(this, 'cardNumber') as int;
  @override
  set cardNumber(int value) => RealmObjectBase.set(this, 'cardNumber', value);

  @override
  int get CVC => RealmObjectBase.get<int>(this, 'CVC') as int;
  @override
  set CVC(int value) => RealmObjectBase.set(this, 'CVC', value);

  @override
  String get memo => RealmObjectBase.get<String>(this, 'memo') as String;
  @override
  set memo(String value) => RealmObjectBase.set(this, 'memo', value);

  @override
  Stream<RealmObjectChanges<Credit>> get changes =>
      RealmObjectBase.getChanges<Credit>(this);

  @override
  Credit freeze() => RealmObjectBase.freezeObject<Credit>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Credit._);
    return const SchemaObject(ObjectType.realmObject, Credit, 'Credit', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', primaryKey: true),
      SchemaProperty('title', RealmPropertyType.string),
      SchemaProperty('cardNumber', RealmPropertyType.int),
      SchemaProperty('CVC', RealmPropertyType.int),
      SchemaProperty('memo', RealmPropertyType.string),
    ]);
  }
}
