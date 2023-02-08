import 'package:flutter/material.dart';
import 'package:memory/realm/schemas.dart';
import 'package:realm/realm.dart';

class RealmServices extends ChangeNotifier {
  late Realm realm;
  late App app;

  RealmServices(this.app) {
    realm = Realm(Configuration.local([Password.schema]));
  }

  void createPassword(String title, String password) {
    final newPassword = Password(ObjectId(), title, password);
    realm.write<Password>(() => realm.add<Password>(newPassword));
  }
}
