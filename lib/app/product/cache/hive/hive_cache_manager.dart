import 'package:dpu_mobil/app/product/manager/directory/directory_manager.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart'
    show getApplicationDocumentsDirectory;

abstract class IDatabaseManager {
  Future<void> start();

  Future<void> clear();
}

@immutable
final class HiveCacheManager implements IDatabaseManager {
  final String _subDirectory = 'dpuApp';

  @override
  Future<void> start() async {
    final appDocumentDirectory = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDirectory.path);

    await _open();
    _initialOperation();
  }

  @override
  Future<void> clear() async {
    await Hive.close();

    await Hive.deleteFromDisk();
    await DirectoryManager.instance.removeSubDirectory(_subDirectory);
  }

  Future<void> _open() async {
    final subPath =
        await DirectoryManager.instance.createSubDirectory(_subDirectory);
    await Hive.initFlutter(subPath);
  }

  void _initialOperation() {
    //Hive.registerAdapter(UserAdapter());
  }
}
