import 'package:realm/realm.dart';

part 'schemas.g.dart';

// @RealmModel()
// class _Memo {
// @MapTo('_id')
// @PrimaryKey()
// late ObjectId id;
//   late String title;
//   late String password;
//   late String memo;
//   late String bankName;
//   late String bankBranch;
//   late String bankAccountNumber;
//   late String ID;
//   late String PASS;
//   late int membershipNumber;
//   late int cardNumber;
//   late int CVC;
//   late String photo;
//   late String address;
//   late int phoneNumber;
//   late DateTime birthDay;
//   late String url;
//   late String taskName;
//   late String productName;
// }

@RealmModel()
class _Password {
  @MapTo('_id')
  @PrimaryKey()
  late ObjectId id;
  late String title;
  late String password;
}

@RealmModel()
class _BankName {
  @MapTo('_id')
  @PrimaryKey()
  late ObjectId id;
  late String title;
  late String bankName;
  late String bankBranch;
  late String bankAccountNumber;
  late String memo;
}

@RealmModel()
class _IDPASS {
  @MapTo('_id')
  @PrimaryKey()
  late ObjectId id;
  late String title;
  late String ID;
  late String PASS;
  late String memo;
}

@RealmModel()
class _MembershipNumber {
  @MapTo('_id')
  @PrimaryKey()
  late ObjectId id;
  late String title;
  late int membershipNumber;
  late String memo;
}

@RealmModel()
class _Credit {
  @MapTo('_id')
  @PrimaryKey()
  late ObjectId id;
  late String title;
  late int cardNumber;
  late int CVC;
  late String memo;
}
//
// @RealmModel()
// class _Person {
// @MapTo('_id')
//   @PrimaryKey()
//   late ObjectId id;
//   late String title;
//   late String photo;
//   late String memo;
// }
//
// @RealmModel()
// class _AddressPhoneNumber {
// @MapTo('_id')
//   @PrimaryKey()
//   late ObjectId id;
//   late String title;
//   late String address;
//   late int phoneNumber;
//   late String memo;
// }
//
// @RealmModel()
// class _Birthday {
// @MapTo('_id')
//   @PrimaryKey()
//   late ObjectId id;
//   late String title;
//   late DateTime birthDay;
//   late String memo;
// }
//
// @RealmModel()
// class _Url {
// @MapTo('_id')
//   @PrimaryKey()
//   late ObjectId id;
//   late String title;
//   late String url;
//   late String memo;
// }
//
// @RealmModel()
// class _Gourmet {
// @MapTo('_id')
//   @PrimaryKey()
//   late ObjectId id;
//   late String title;
//   late String url;
//   late int phoneNumber;
//   late String address;
//   late String memo;
// }
//
// @RealmModel()
// class _Task {
// @MapTo('_id')
//   @PrimaryKey()
//   late ObjectId id;
//   late String title;
//   late String taskName;
//   late String memo;
// }
//
// @RealmModel()
// class _Shopping {
// @MapTo('_id')
//   @PrimaryKey()
//   late ObjectId id;
//   late String title;
//   late String productName;
//   late int quantity;
//   late int gram;
//   late String memo;
// }
//
// @RealmModel()
// class _Calculation {
// @MapTo('_id')
//   @PrimaryKey()
//   late ObjectId id;
//   late String title;
//   late int sum;
//   //late int? number;
//   late String memo;
// }
