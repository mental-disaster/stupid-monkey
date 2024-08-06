import 'package:get/get.dart';
import 'package:stupid_monkey/db/database.dart';
import 'package:stupid_monkey/repositories/sample_repository.dart';

class SampleService extends GetxService {
  final SampleRepository sampleRepository;

  SampleService({required this.sampleRepository});

  Future<int> create() {
    return sampleRepository.create();
  }

  Future<List<TodoItem>> findAll() {
    return sampleRepository.findAll();
  }

  Future<int> deleteAll() {
    return sampleRepository.deleteAll();
  }
}
