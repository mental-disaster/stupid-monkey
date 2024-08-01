import 'package:drift/drift.dart';
import 'package:get/get.dart' as getx;
import 'package:stupid_monkey/db/database.dart';

class SampleRepository {
  final db = getx.Get.find<AppDatabase>();

  Future<TodoItem?> insertTodoItem() {
    db.into(db.todoItems).insert(const TodoItemsCompanion(
      title: Value("test title"),
      content: Value("test content"),
    ));
    return (db.select(db.todoItems)..limit(1)).getSingleOrNull();
  }
}