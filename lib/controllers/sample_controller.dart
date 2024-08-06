import 'package:get/get.dart';
import 'package:stupid_monkey/services/sample_service.dart';

import '../db/database.dart';

class SampleController extends GetxController {
  static SampleController get to => Get.find();

  final SampleService sampleService;

  SampleController({required this.sampleService});

  Future<int> create() {
    return sampleService.create();
  }

  Future<List<TodoItem>> findAll() {
    return sampleService.findAll();
  }

  Future<int> deleteAll() {
    return sampleService.deleteAll();
  }
}
