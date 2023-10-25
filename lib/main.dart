import 'package:flutter/material.dart';
import 'package:myflutter/pertemuan2.dart';
import 'package:myflutter/pertemuan3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductForm(),
    );
  }
}
