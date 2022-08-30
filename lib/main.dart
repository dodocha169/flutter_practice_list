import 'package:flutter/material.dart';
final List<String> entries = <String>['敵対的買収とその防衛策とは？',
  '宇宙際タイヒミュラー理論について解説します',
  'フェルマーの最終定理証明してみたwww'];


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'リスト'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: const Text('Youtubeトレース',textAlign: TextAlign.center,),
        backgroundColor: Colors.black87,
        actions:[
          Icon(Icons.laptop_chromebook),
          SizedBox(width: 24),
          Icon(Icons.search),
          SizedBox(width: 24),
          Icon(Icons.menu),
          SizedBox(width: 24,),
        ]
      ),
      body: Container(
        color: Colors.black,
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 100,
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Image.network('https://pbs.twimg.com/media/ELzRQeNU4AEzGaP?format=jpg&name=medium',
                          ),
                        SizedBox(width: 16,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(entries[index],
                              style: TextStyle(
                                color: Colors.white,
                                height: 1.3,
                                fontSize: 16,
                              ),
                                maxLines: 3,
                              ),
                              Text('810回再生 12日前',
                              style: TextStyle(color: Colors.grey,
                              fontSize: 12),)
                            ],
                          ),
                        ),
                      ],
                    ),
              );
            }
        ),
        ),
        );
  }
}
