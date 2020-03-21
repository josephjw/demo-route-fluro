import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutterapproutefluro/main.dart';
import 'package:flutterapproutefluro/page1.dart';
import 'package:flutterapproutefluro/page2.dart';

class FluroRouter {
  static Router router = Router();

  static Handler _home = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          Home());

  static Handler _page1 = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) => Page1(
            params['param1'][0],
            params['param2'][0],
          ));

  static Handler _page2 = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) => Page2(
            params['param1'][0],
            params['param1'][1],
            params['param2'][0],
          ));

  static void setupRouter() {
    router.define(
      '/',
      handler: _home,
    );

    router.define(
      'page1/:param1/:param2',
      handler: _page1,
      transitionType: TransitionType.inFromBottom,
    );

    router.define(
      'page2',
      handler: _page2,
      transitionType: TransitionType.inFromLeft,
    );
  }
}
