import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      // Container : 특정 공간을 책임지는 위젯. 배경색, 정렬, 여백 등을 담당
      home: Container(
        color: Colors.white,
        // Center() : 화면 한 가운데 정렬
        // Center() 함수 아래에 child 옵션을 사용하여 Text 위젯을 넣음. (여러개 넣을 땐 children)
        child: Center(
          // Text : 화면에 텍스트를 출력하는 위젯
          child: Text(
            'hello Flutter',
            // 텍스트를 가운데 정렬
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blue , fontSize: 20 ),
          ),
        ),
      ),
    );
  }
}
