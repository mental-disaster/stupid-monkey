import 'package:get/get.dart';
import 'package:stupid_monkey/db/database.dart';
import 'package:stupid_monkey/repositories/sample_repository.dart';

class SampleService extends GetxService {
  final SampleRepository sampleRepository;

  SampleService({required this.sampleRepository});

  Future<TodoItem?> insertAndFind() async {
    return await sampleRepository.insertTodoItem();
  }
}