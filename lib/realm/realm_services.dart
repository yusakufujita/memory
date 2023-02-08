import 'package:flutter/material.dart';
import 'package:memory/realm/schemas.dart';
import 'package:realm/realm.dart';

class RealmServices with ChangeNotifier {
  late Realm realm;
  late App app;

  RealmServices(this.app) {
    realm = Realm(Configuration.local([
      Password.schema,
      BankName.schema,
      IDPASS.schema,
      MembershipNumber.schema,
      Credit.schema,
    ]));
  }

  void createPassword(String title, String password) {
    final newPassword = Password(ObjectId(), title, password);
    realm.write<Password>(() => realm.add<Password>(newPassword));
    notifyListeners();
  }

  void deletePassword(Password password) {
    realm.write(() => realm.delete(password));
    notifyListeners();
  }

  //クラス名Passwordと属性passwordが同名なので不可。別のやり方を考える
  // Future<void> updatePassword(Password password,
  //     {String? title, String? password}) {
  //   return null;
  // }
}
