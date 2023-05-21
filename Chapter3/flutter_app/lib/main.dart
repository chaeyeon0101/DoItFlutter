// 패키지 불러옴
import 'package:flutter/material.dart';

// main 함수에서 시작
void main() {
  // runApp() : 앱을 시작하는 역할
  runApp(MyApp());
}

// StatelessWidget 클래스 상속
class MyApp extends StatelessWidget {
  // build 함수 재정의
  @override
  // 어떠한 위젯을 만들 것인지 정의
  Widget build(BuildContext context) {
    // MaterialApp() : 그림을 그리는데 필요한 도화지 같은 것. 처음 runApp()을 이용해 클래스를 실행할 때 반환해야 함.
    // 그림을 그리는 도구 정의
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // 메인 색상 지정
        primarySwatch: Colors.blue,
        // 어떤 플랫폼에서도 자연스럽게 보이도록 해줌.
        visualDendity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
