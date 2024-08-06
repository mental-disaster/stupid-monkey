import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stupid_monkey/controllers/sample_controller.dart';
import 'package:stupid_monkey/repositories/sample_repository.dart';
import 'package:stupid_monkey/services/sample_service.dart';

import '../db/database.dart';

class Initializer {
  static Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized(); // 비동기 초기화 작업이 필요할 경우 필요

    Get.put(AppDatabase());

    // repository
    final sampleRepository = SampleRepository();

    // service
    final sampleService = SampleService(sampleRepository: sampleRepository);

    // controller
    Get.put(SampleController(sampleService: sampleService));
  }
}
