import 'package:flutter/material.dart';
import '../../widgets/complaint_form.dart';

class ComplaintsScreen extends StatelessWidget {
  const ComplaintsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Submit Complaint'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: ComplaintForm(),
      ),
    );
  }
}