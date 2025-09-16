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


 static AppDateModel getMonthStartAndEnd(DateTime date) {
    final startDate = DateTime(date.year, date.month, 1);
    final endDate = DateTime(date.year, date.month + 1, 0); // 0 gives last day of previous month
    return AppDateModel(startDate: startDate, endDate: endDate);
  }

  static AppDateModel getWeekRange(DateTime selectedDate) {
    int daysFromMonday = selectedDate.weekday - 1; // weekday: Monday = 1, Sunday = 7
    DateTime startOfWeek = selectedDate.subtract(Duration(days: daysFromMonday));
    DateTime endOfWeek = startOfWeek.add(Duration(days: 6));
    DateTime weekStart = DateTime(startOfWeek.year, startOfWeek.month, startOfWeek.day);
    DateTime weekEnd = DateTime(endOfWeek.year, endOfWeek.month, endOfWeek.day, 23, 59, 59);

    return AppDateModel(startDate: weekStart, endDate: weekEnd);
  }


  static AppDateModel getDayRange(DateTime date) {
    DateTime startOfDay = DateTime(date.year, date.month, date.day);
    DateTime endOfDay = DateTime(date.year, date.month, date.day, 23, 59, 59, 999);
    return AppDateModel (startDate: startOfDay,endDate: endOfDay);
  }
}




class AppDateModel{
  final DateTime startDate;
  final DateTime endDate;

  AppDateModel({required this.startDate, required this.endDate});
}