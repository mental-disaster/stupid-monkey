import 'package:flutter/material.dart';
import 'package:stupid_monkey/initializer/initializer.dart';

import 'app/app.dart';

void main() async {
  await Initializer.initialize();
  runApp(const MyApp());
}
