import 'package:flutter/material.dart';

class SigInPage extends StatelessWidget {
  const SigInPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sigInPage"),
      ),
      body: Container(
        child: Center(child: Text("sigInPage")),
      ),
    );
  }
}
