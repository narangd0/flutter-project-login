import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class RouteArguments {
  final String title;
  final String content;

  RouteArguments(this.title, this.content);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 디버그 줄 없애기
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),

      // routes
      // routes: {'/alert': (context) => Alert()},
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
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text("11주차 수업 대체 과제"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Image.asset(
                  width: 400,
                  'assets/flutter_logo.png',
                ),
              ),
              TextButton(
                  onPressed: () async {
                    // login 페이지로부터의 데이터 수신을 대기 : await
                    var result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ));
                    print(result);
                  },
                  child: Text("로그인 페이지로 이동")),
            ],
          ),
        ));
  }
}
