import 'package:drift/drift.dart';
import 'package:get/get.dart' as getx;
import 'package:stupid_monkey/db/database.dart';

class SampleRepository {
  final db = getx.Get.find<AppDatabase>();

  Future<int> create() {
    return db.into(db.todoItems).insert(const TodoItemsCompanion(
          title: Value("test title"),
          content: Value("test content"),
        ));
  }

  Future<List<TodoItem>> findAll() {
    return db.select(db.todoItems).get();
  }

  Future<int> deleteAll() {
    return db.delete(db.todoItems).go();
  }
}
