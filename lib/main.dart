import 'package:flutter/material.dart';
import 'package:memory/extension.dart';

import 'title_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'MEMO;RY'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  List<String> iconImage = [
    "images/key_image.jpg",
    "images/bank_image.jpg",
    "images/key_image.jpg",
    "images/phone_image.jpg",
    "images/address_image.jpg",
    "images/people_image.jpg",
    "images/address_image.jpg",
    "images/address_image.jpg",
    "images/address_image.jpg",
    "images/address_image.jpg",
    "images/address_image.jpg",
    "images/address_image.jpg",
    "images/address_image.jpg",
    "images/address_image.jpg",
    "images/address_image.jpg",
    "images/address_image.jpg",
  ];

  List<String> title = [
    "暗証番号",
    "銀行口座",
    "ID/PASS",
    "館員番号",
    "クレカ",
    "フリー",
    "文字数カウント",
    "日記",
    "人物",
    "住所/電話番号",
    "誕生日",
    "URL",
    "グルメ",
    "タスク",
    "買い物",
    "計算",
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: HexColor('#000000')),
        backgroundColor: Colors.white,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black),
        ),
      ),
      endDrawer: SizedBox(
          width: double.infinity,
          child: Drawer(
            child: ListView(
              children: const [
                DrawerHeader(
                    decoration: BoxDecoration(color: Colors.yellowAccent),
                    child: Text("MEMO;RY")),
                ListTile(title: Text("アプリの使い方")),
                ListTile(title: Text("パスワード管理")),
                ListTile(title: Text("利用規約"))
              ],
            ),
          )),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  left: 32, right: 32, bottom: 0, top: 12),
              height: 50,
              child: TextFormField(
                decoration: const InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: '検索',
                    suffixIcon: Icon(Icons.search),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 600,
              child: ListView.builder(
                itemCount: 16, // この行を追加
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
                        leading: Image.asset(iconImage[index]),
                        title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: 108, child: Text(title[index])),
                              SizedBox(
                                height: 72,
                                width: 85,
                                child: Row(
                                  children: [Text('28'), Text('件')],
                                ),
                              ),
                            ]),
                        trailing: Icon(Icons.more_vert),
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const TitleList(
                              title: "MEMO;RY",
                            );
                          }));
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
