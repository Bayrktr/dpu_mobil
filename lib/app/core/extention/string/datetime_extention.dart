final class DatetimeExtention {
  DatetimeExtention(String value) : _string = value;

  final String? _string;

  DateTime? get toDatetime {
    if(_string == null) return null;
    try {
      return DateTime.parse(_string);
    } catch (e) {
      print('Parse error: $e');
      return null;
    }
  }
}
