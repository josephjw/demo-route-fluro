import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  final String param1;
  final String param2;

  Page1(this.param1, this.param2);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("${widget.param1} - ${widget.param2}"),
            RaisedButton(
              onPressed: () {
                var param1 = 'param1-value';
                var param2 = 'param2-value';
                Navigator.pushNamed(context,
                    '/page2?param1=$param1&param1=$param1&param2=$param2');
              },
              child: Text('go to Page2'),
            )
          ],
        ),
      ),
    );
  }
}
