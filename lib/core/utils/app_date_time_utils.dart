class AppDateTimeUtils{
  static String formatFull(DateTime dateTime) {
    final date = "${_twoDigits(dateTime.day)}/${_twoDigits(dateTime.month)}/${dateTime.year}";
    final time = formatTime(dateTime);
    return "$date $time";
  }

  static String formatDate(DateTime dateTime) {
    return "${_twoDigits(dateTime.day)}/${_twoDigits(dateTime.month)}/${dateTime.year}";
  }

  static String formatTime(DateTime dateTime) {
    int hour = dateTime.hour;
    final minute = _twoDigits(dateTime.minute);
    final ampm = hour >= 12 ? "PM" : "AM";
    hour = hour % 12;
    if (hour == 0) hour = 12;
    return "$hour:$minute $ampm";
  }

  static String _twoDigits(int n) => n.toString().padLeft(2, '0');
}