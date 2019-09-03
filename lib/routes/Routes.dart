import 'package:flutter/material.dart';
import '../pages/tabs.dart';
import '../pages/form.dart';
import '../pages/search.dart';
import '../pages/Goods.dart';
import '../pages/GoodsInfo.dart';
import '../pages/user/login.dart';
import '../pages/user/registerFirst.dart';
import '../pages/user/registerSecond.dart';
import '../pages/user/registerThird.dart';
import '../pages/appBarDemo.dart';
import '../pages/TabBarController.dart';
import '../pages/user.dart';
import '../pages/button.dart';
import '../pages/TextFild.dart';
import '../pages/Checkbox.dart';
import '../pages/Radio.dart';
import '../pages/FormDemo.dart';
import '../pages/MyDate.dart';

 final routes = {
        '/':(context)=>Tabs(),
        '/form':(context)=>FormPage(),
        '/goods':(context)=>GoodsPage(),
        '/goodsinfo':(context,{arguments})=>GoodsInfoPage(arguments:arguments),
        '/search':(context,{arguments})=>SearchPage(arguments:arguments),
        '/login':(context)=>LoginPage(),
        '/registerfirst':(context)=>RegisterFirstPage(),
        '/registersecond':(context)=>RegisterSecondPage(),
        '/registerthird':(context)=>RegisterThirdPage(),
        '/appBarDemo':(context)=>AppBarDemoPage(),
        '/tabbarcontroller':(context)=>TabBarControllerPage(),
        '/user':(context)=>UserPage(),
        '/button':(context)=>ButtonPage(),
        '/textfild':(context)=>TextFildPage(),
        '/checkbox':(context)=>CheckBoxPage(),
        '/raido':(context)=>RadioPage(),
        '/formDemo':(context)=>FormDemoPage(),
        '/MyDate':(context)=>MyDatePage(),
      };
var onGenerateRoute = (RouteSettings settings) {
          // 统一处理
          final String name = settings.name;
          final Function pageContentBuilder = routes[name];
          if (pageContentBuilder != null) {
            if (settings.arguments != null) {
              final Route route = MaterialPageRoute(
                  builder: (context) => pageContentBuilder(context,
                      arguments: settings.arguments));
              return route;
            } else {
              final Route route = MaterialPageRoute(
                  builder: (context) => pageContentBuilder(context));
              return route;
            }
          }
        };