import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stupid_monkey/views/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Stupid Monkey',
      home: Home(),
    );
  }
}
