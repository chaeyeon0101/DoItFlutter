import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  static const String _title = 'Widget Example';

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: _title,
      home: WidgetApp(),
    );
  }
}

class WidgetApp extends StatefulWidget{
  WidgetApp({Key? key}) : super(key: key);
  @override
  _WidgetExampleState createState() => _WidgetExampleState();
}

class _WidgetExampleState extends State<WidgetApp>{
  String sum = '';
  TextEditingController value1 = TextEditingController();
  TextEditingController value2 = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Example'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15),
                child: Text('flutter'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(keyboardType: TextInputType.number, controller: value1),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(keyboardType: TextInputType.number, controller: value2),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                // https://www.flutterbeads.com/elevated-button-color-in-flutter/
                child: ElevatedButton(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.add),
                      Text('더하기')
                    ],
                  ),
                  onPressed: (){
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
