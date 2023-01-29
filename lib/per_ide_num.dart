import 'package:flutter/material.dart';
import 'package:memory/extension.dart';
// import 'package:memory/widgets/custom_bottom_navigation_bar_widget.dart';
// import 'package:memory/widgets/custom_form_widget.dart';

class PerIdeNum extends StatefulWidget {
  const PerIdeNum({super.key, required this.title});
  final String title;
  @override
  State<PerIdeNum> createState() => _PerIdeNumState();
}

class _PerIdeNumState extends State<PerIdeNum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        backgroundColor: HexColor('#FFFFFF'),
        iconTheme: IconThemeData(color: HexColor('#000000')), // ここで色を決めることができる。
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Parts('暗証番号'),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}

class Parts extends StatefulWidget {
  // const Parts({Key? key}) : super(key: key);
  final String title;

  Parts(this.title);
  @override
  State<Parts> createState() => _PartsState();
}

class _PartsState extends State<Parts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: HexColor('#F9F9F9'),
          padding:
              const EdgeInsets.only(left: 32, right: 32, bottom: 0, top: 0),
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // <= 追加
            children: <Widget>[
              // main.dartから渡ってきた値を動的に入れる
              const Text(
                '暗証番号',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset('images/key.jpg'),
            ],
          ),
        ),
        Container(
            padding: const EdgeInsets.only(
              left: 32,
              right: 32,
              top: 5,
              bottom: 5,
            ),
            child: Column(
              children: const <Widget>[
                CustomFormWidget("タイトル", 30),
                CustomFormWidget("番号", 30),
                CustomFormWidget("備考", 30)
              ],
            )),
      ],
    );
  }
}

class CustomFormWidget extends StatelessWidget {
  final String title;
  final double height;
  const CustomFormWidget(this.title, this.height);

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
