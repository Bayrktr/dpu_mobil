import 'package:easy_localization/easy_localization.dart';

final class LangExtension {
  /// define
  LangExtension(String value) : _string = value;
  final String _string;

  /// locale translate
  String get tr => _string.tr();
}
