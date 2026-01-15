enum CustomIconsEnum {
  event,
}

extension CustomIconsExtention on CustomIconsEnum {
  String get fontFamily {
    switch (this) {
      case CustomIconsEnum.event:
        return 'event_icon';
    }
  }

  int get codePoint {
    switch (this) {
      case CustomIconsEnum.event:
        return 1;
    }
  }
}
