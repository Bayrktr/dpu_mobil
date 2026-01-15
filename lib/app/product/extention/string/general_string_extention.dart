extension GeneralStringExtention on String{
  String first(int count) {
    if (count <= 0) return '';
    return length <= count ? this : substring(0, count);
  }

}