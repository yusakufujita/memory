import 'package:flutter/material.dart';

class CustomFormWidget extends StatelessWidget {
  final String title;
  final double height;
  CustomFormWidget(this.title, this.height);

  @override
  Widget build(BuildContext context) {
    //titleとheightはコンストラクタで都度、入れ替えるのでconstは付かない
    return TextField(
      decoration: InputDecoration(
        hintText: title,
        border: InputBorder.none,
        //高さを変更するためのパラメータ。下の高さしか必要なかったので、bottomのみ指定
        contentPadding: EdgeInsets.only(bottom: height),
      ),
    );
  }
}
