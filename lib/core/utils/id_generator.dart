
class IdGenerator{
  static int _counter = 0;

  static String generateIncomeId() {
    final now = DateTime.now();

    // Time part (4 digits) + Counter part (2 digits) = 6 digits total
    final timePart = (now.microsecondsSinceEpoch % 10000);
    final counterPart = (++_counter % 100);

    final uniqueNumber = (timePart * 100) + counterPart;

    return 'inc${uniqueNumber.toString().padLeft(6, '0')}';
  }

  static String generateExpenseId() {
    final now = DateTime.now();

    // Time part (4 digits) + Counter part (2 digits) = 6 digits total
    final timePart = (now.microsecondsSinceEpoch % 10000);
    final counterPart = (++_counter % 100);

    final uniqueNumber = (timePart * 100) + counterPart;

    return 'exp${uniqueNumber.toString().padLeft(6, '0')}';
  }
}