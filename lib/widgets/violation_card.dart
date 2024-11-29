import 'package:flutter/material.dart';
import '../models/violation.dart';
import 'package:intl/intl.dart';

class ViolationCard extends StatelessWidget {
  final Violation violation;

  const ViolationCard({super.key, required this.violation});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              violation.type,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'Date: ${DateFormat('MMM dd, yyyy').format(violation.date)}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              'Location: ${violation.location}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              'Amount: \$${violation.amount.toStringAsFixed(2)}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Chip(
                  label: Text(
                    violation.isPaid ? 'Paid' : 'Unpaid',
                    style: TextStyle(
                      color: violation.isPaid ? Colors.green : Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}