import 'package:flutter/material.dart';
// import 'package:flutter_app1/pages/form.dart';
// import 'package:flutter_app1/pages/search.dart';
import 'listData/listData.dart';
import './routes/Routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; 
main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      // initialRoute: '/appBarDemo',
      onGenerateRoute:onGenerateRoute,
      localizationsDelegates: [
        //此处
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        //此处
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
      ],
    );
  }
}




