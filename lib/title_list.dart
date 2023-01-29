import 'package:flutter/material.dart';
import 'package:memory/extension.dart';

import 'per_ide_num.dart';

class TitleList extends StatefulWidget {
  const TitleList({super.key, required this.title});
  final String title;

  @override
  State<TitleList> createState() => _TitleListState();
}

class _TitleListState extends State<TitleList> {
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
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            color: HexColor('#F9F9F9'),
            padding:
                const EdgeInsets.only(left: 32, right: 32, bottom: 0, top: 0),
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // <= 追加
              children: const <Widget>[
                // main.dartから渡ってきた値を動的に入れる
                Text(
                  '暗証番号',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '28件',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 600,
            child: ListView.builder(
              itemCount: 16,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.only(
                    left: 32,
                    right: 32,
                    top: 5,
                    bottom: 5,
                  ),
                  height: 82,
                  width: double.infinity,
                  child: Card(
                    child: ListTile(
                      tileColor: Colors.white,
                      leading: Image.asset('images/key.jpg'),
                      title: Text('タイトル'),
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          // 保存する形式によってreturnするファイルを変更する main.swiftからきた値を見てswitch文
                          return PerIdeNum(
                            title: 'MEMO;RY',
                          );
                        }));
                      },
                    ),
                  ),
                );
              },
            ),
          )
        ],
      )),
    );
  }
}
