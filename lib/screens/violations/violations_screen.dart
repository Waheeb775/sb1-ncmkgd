import 'package:flutter/material.dart';
import '../../models/violation.dart';
import '../../widgets/violation_card.dart';

class ViolationsScreen extends StatelessWidget {
  const ViolationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Violations'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: dummyViolations.length,
        itemBuilder: (context, index) {
          return ViolationCard(violation: dummyViolations[index]);
        },
      ),
    );
  }
}

final List<Violation> dummyViolations = [
  Violation(
    id: '1',
    type: 'Speeding',
    date: DateTime.now(),
    amount: 150.0,
    location: '123 Main St',
    isPaid: false,
  ),
  // Add more dummy violations as needed
];