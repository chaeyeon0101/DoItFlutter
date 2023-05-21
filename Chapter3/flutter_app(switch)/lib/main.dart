import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// StatefulWidget은 State 클래스 필요
// MyApp 클래스가 현재 화면을 주시하다가 상태가 변경되면 감지하고 _MyApp 클래스가 화면 갱신
class MyApp extends StatefulWidget {
  @override
  // createState() 함수 재정의.
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

// State 클래스를 상속받는 _MyApp 클래스
// 언더스코어(_)은 내부에서만 사용하는 것을 의미한다.
class _MyApp extends State<MyApp>{
  var switchValue = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        darkTheme: ThemeData.light(),
        home: Scaffold(
          body: Center(
            child: Switch(
              // switchValue가 Switch의 value를 가리킴.
              value: switchValue,
              // 이벤트가 발생하면 value 값을 전달 받고, 이 값이 switchValue에 담기고, 따라서 Switch의 value가 변경되면서 화면 갱신
              onChanged: (value) {
                // setState() : 변숫값이 바뀌면 앱에 알려 화면을 갱신하도록 하는 함수
                setState((){
                  // 안드로이드 스튜이오 [run] 탭 : 플러터 앱 실행 중 내부에서 발행하는 다양한 기록 볼 수 있음. value 값 확인 가능
                  print(value);
                  switchValue = value;
                });
            }),
          ),
        )
    );
  }
}
