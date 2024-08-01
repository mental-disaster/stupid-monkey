import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stupid_monkey/controllers/sample_controller.dart';
import 'package:stupid_monkey/repositories/sample_repository.dart';
import 'package:stupid_monkey/services/sample_service.dart';
import 'package:stupid_monkey/views/home.dart';

import 'db/database.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // 비동기 초기화 작업이 필요할 경우 필요

  Get.put(AppDatabase());

  final sampleRepository = SampleRepository();
  final sampleService = SampleService(sampleRepository: sampleRepository);

  Get.put(SampleController(sampleService: sampleService));
  runApp(const MyApp());
}

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
