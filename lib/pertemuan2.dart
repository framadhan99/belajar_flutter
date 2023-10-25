import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi Flutter"),
        ),
        body: Column(
          children: [
            Text('Column1'),
            Text('Column2'),
            Text('Column3'),
            Text('Column4'),
            Text('Column5'),
          ],
        ));
  }
}
