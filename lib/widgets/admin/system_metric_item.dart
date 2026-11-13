import 'package:flutter/material.dart';

class SystemMetricItem extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const SystemMetricItem({super.key, required this.title, required this.value, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.grey[700], size: 28),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 12, color: Colors.grey[600])),
            Text(value, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87)),
          ],
        ),
      ],
    );
  }
}
