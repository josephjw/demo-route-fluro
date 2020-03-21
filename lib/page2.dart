import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  final String param1;
  final String param11;
  final String param2;

  Page2(this.param1, this.param11, this.param2);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Container(
          child:
              Text("${widget.param1} - ${widget.param11} - ${widget.param2}"),
        ),
      ),
    );
  }
}
