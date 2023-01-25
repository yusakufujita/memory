import 'package:flutter/material.dart';
import 'package:memory/per_ide_num_sample.dart';

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
      home: const PerIdeNumSample(title: 'PerIdeNumSample'),
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
        backgroundColor: Colors.white,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            //検索窓を書く
            Container(
              padding:
                  const EdgeInsets.only(left: 32, right: 32, bottom: 0, top: 0),
              height: 40,
              child: TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder()),
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
                        leading: Icon(Icons.people),
                        title: Text(title[index]),
                        trailing: Icon(Icons.more_vert),
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return TitleList(
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
