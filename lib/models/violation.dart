class Violation {
  final String id;
  final String type;
  final DateTime date;
  final double amount;
  final String location;
  final bool isPaid;

  Violation({
    required this.id,
    required this.type,
    required this.date,
    required this.amount,
    required this.location,
    required this.isPaid,
  });
}