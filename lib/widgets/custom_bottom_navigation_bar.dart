import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  //onTapで入力されたindexを使って、実行するメソッドを選択する
  void methodSwitcher(int index) {
    switch (index) {
      case 0:
        print("メソッドA");
        break;
      case 1:
        print("メソッドB");
        break;
      case 2:
        print("メソッドC");
        break;
      case 3:
        print("メソッドD");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: methodSwitcher,
      //なぜか3つ以上だと表示されず、fixedを付けると解消されるようです
      type: BottomNavigationBarType.fixed,
      items: const [
        //どうやらlabelは必須のため、空の値を入れておきました
        BottomNavigationBarItem(icon: Icon(Icons.copy), label: "コピー"),
        BottomNavigationBarItem(icon: Icon(Icons.screenshot), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.upload), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.delete), label: ""),
      ],
    );
  }
}
