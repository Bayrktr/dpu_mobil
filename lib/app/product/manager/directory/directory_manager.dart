// ignore_for_file: prefer_constructors_over_static_methods

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

@immutable
final class DirectoryManager {
  const DirectoryManager._();
  static DirectoryManager? _operation;
  static DirectoryManager get instance {
    _operation ??= const DirectoryManager._();
    return _operation!;
  }

  Future<Directory> _fileDirectory(String path) async {
    final appDocDir = await getApplicationDocumentsDirectory();
    final appDocPath = appDocDir.path;

    final dirPath = p.join(appDocPath, path);
    final newDirectory = Directory(dirPath);
    return newDirectory;
  }


  Future<String> createSubDirectory(String path) async {
    try {
      final newDirectory = await _fileDirectory(path);

      if (!await newDirectory.exists()) {
        await newDirectory.create();
      }
      return newDirectory.path;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<bool> removeSubDirectory(String path) async {
    try {
      final newDirectory = await _fileDirectory(path);

      if (await newDirectory.exists()) {
        await newDirectory.delete();
      }
      return true;
    } catch (e) {
      return false;
    }
  }
}