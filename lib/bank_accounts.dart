import 'package:flutter/material.dart';
import 'package:memory/extension.dart';
import 'package:memory/widgets/custom_bottom_navigation_bar_widget.dart';
import 'package:memory/widgets/custom_form_widget.dart';

class BankAccounts extends StatefulWidget {
  const BankAccounts({Key? key}) : super(key: key);

  @override
  State<BankAccounts> createState() => _BankAccountsState();
}

class _BankAccountsState extends State<BankAccounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          bottomOpacity: 0.0,
          elevation: 0.0,
          backgroundColor: HexColor('#FFFFFF'),
          iconTheme:
              IconThemeData(color: HexColor('#000000')), // ここで色を決めることができる。
          title: Text(
            widget.title,
            style: const TextStyle(color: Colors.black),
          ),
        ),
        body: Parts('暗証番号'));
  }
}

class  extends StatefulWidget {
  const ({Key? key}) : super(key: key);

  @override
  State<> createState() => _State();
}

class _State extends State<> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
