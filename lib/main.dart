import 'package:flutter/material.dart';
import 'package:genericfield/gen_field/gen_field_vu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GenericField Example',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:  const GenFieldScreen(),
    );
  }
}
