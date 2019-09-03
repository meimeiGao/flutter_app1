import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class MyDatePage extends StatefulWidget {
  MyDatePage({Key key}) : super(key: key);

  _MyDatePageState createState() => _MyDatePageState();
}

class _MyDatePageState extends State<MyDatePage> {
  DateTime _nowDate = DateTime.now();
  var _nowTime = TimeOfDay(hour: 12,minute: 30);
    _showDatePicker() async{
      // showDatePicker(
      //   context: context,
      //   initialDate: _nowDate,
      //   firstDate: DateTime(1980),
      //   lastDate: DateTime(2100),
      // ).then((result){
      //   print(result);
      // });
      var result = await showDatePicker(
        context: context,
        initialDate: _nowDate,
        firstDate: DateTime(1980),
        lastDate: DateTime(2100),
        locale: Locale('zh'),  
      );
      setState(() {
       this._nowDate = result; 
      });
    }
    _showTimePicker() async{
      var timeRusult = await showTimePicker(
        context: context,
        initialTime: _nowTime,
      );
      setState(() {
       this._nowTime = timeRusult; 
      });
    } 
  @override
  void initState(){
    super.initState();
    var now = DateTime.now().microsecondsSinceEpoch;//1567346217777161
    print(now);
    print(DateTime.fromMicrosecondsSinceEpoch(1567346217777161));
    var date = DateTime.now();
    print(formatDate(date,[yyyy, '-', mm, '-', dd]));
    print(formatDate(date,[yyyy,'年',mm,'月',dd,'日']));
    // print(formatDate(DateTime(1989, 2, 21), [yyyy, '-', mm, '-', dd]));

  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('日期页面'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('${formatDate(_nowDate, [yyyy, '-', mm, '-', dd])}'),
                    Icon(Icons.arrow_drop_down)


                  ],
                ),
              onTap: (){
                print('打印日期');
                _showDatePicker();
              },
            ),
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Text('${formatDate(_nowDate, [yyyy, '-', mm, '-', dd])}'),
                  Text('${this._nowTime.format(context)}'),
                  Icon(Icons.arrow_drop_down)


                ],
              ),
            onTap: (){
              print('打印日期');
              _showTimePicker();
            },
          ),

            ],
          )
        ],
      ),
    );
  }
}