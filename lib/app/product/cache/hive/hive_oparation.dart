import 'package:dpu_mobil/app/product/cache/hive/model/hive_model.dart';
import 'package:dpu_mobil/app/product/cache/hive/model/hive_model_mixin.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveDatabaseOperation<T extends HiveModelMixin>
    extends HiveManagerInitialModel with HiveManagerMixin<T> {
  Stream<Iterable<T>> streamItems() {
    return Stream.value(box.listenable()).map((event) => event.value.values);
  }

  Future<void> addOrUpdateItem(T model) => box.put(model.key, model);

  T? getItem(String key) => box.get(key);

  Future<void> deleteItem(String key) => box.delete(key);
}
