import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController textEditingController = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  var input_id = "";
  var input_password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // pop()에 부모 페이지로 보낼 데이터 작성
            Navigator.of(context).pop("");
          },
        ),
        title: Text("로그인 페이지"),
      ),
      body: Container(
        child: Center(
            child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Image.asset(
                width: 400,
                'assets/flutter_logo.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                decoration:
                    InputDecoration(labelText: "아이디", labelStyle: TextStyle()),
                onChanged: (text) {
                  setState(() {
                    input_id = text;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController2,
                decoration:
                InputDecoration(labelText: "비밀번호", labelStyle: TextStyle()),
                onChanged: (text2) {
                  setState(() {
                    input_password = text2;
                  });
                },
              ),
            ),
            TextButton(
              onPressed: () {
                // pop()에 부모 페이지로 보낼 데이터 작성
                Navigator.of(context)
                    .pop("입력한 ID는 ${input_id}, 입력한 PW는 ${input_password}");
              },
              child: Text("로그인"),
            ),
          ],
        )),
      ),
    );
  }
}
