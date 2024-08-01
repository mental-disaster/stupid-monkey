import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'database.g.dart';

class TodoItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 6, max: 32)();
  TextColumn get content => text().named('body')();
  IntColumn get category =>
      integer().nullable().references(TodoCategory, #id)();
  DateTimeColumn get dueDate =>
      dateTime().nullable()(); // new, added column in v2
  IntColumn get priority => integer().nullable()(); // new, added column in v3
  DateTimeColumn get createdAt => dateTime().nullable()();
}

class TodoCategory extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get description => text()();
}

@DriftDatabase(tables: [TodoItems, TodoCategory])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 3;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        if (from < 2) {
          await m.addColumn(todoItems, todoItems.dueDate);
        }
        if (from < 3) {
          await m.addColumn(todoItems, todoItems.priority);
        }
      },
    );
  }

  static QueryExecutor _openConnection() {
    return driftDatabase(name: 'my_database');
  }
}
