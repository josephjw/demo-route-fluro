import 'package:flutter/material.dart';
import 'package:flutterapproutefluro/route.dart';

void main() {
  FluroRouter.setupRouter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: FluroRouter.router.generator,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            onPressed: () {
              final param1 = 'param1-value';
              final param2 = 'param2-value';
              Navigator.pushNamed(context, '/page1/$param1/$param2');
            },
            child: Text('go to Page1'),
          ),
        ),
      ),
    );
  }
}
