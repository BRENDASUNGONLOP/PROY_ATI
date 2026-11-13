import 'package:flutter/material.dart';

class ProgressRow extends StatelessWidget {
  final String title;
  final String percent;

  const ProgressRow({super.key, required this.title, required this.percent});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
            Text(percent, style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF1E513A))),
          ],
        ),
        const SizedBox(height: 6),
        Container(height: 8, decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(4))),
      ],
    );
  }
}
