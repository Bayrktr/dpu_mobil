import 'package:hive_flutter/hive_flutter.dart';

abstract class HiveManagerInitialModel {}

mixin HiveManagerMixin<T> on HiveManagerInitialModel {
  late Box<T> box;

  Future<void> start(String key) async {
    if (Hive.isBoxOpen(key)) return;
    box = await Hive.openBox<T>(
      key,
    );
  }

  Future<void> clear() => box.clear();
}
