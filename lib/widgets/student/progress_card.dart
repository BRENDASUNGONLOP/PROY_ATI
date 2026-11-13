import 'package:flutter/material.dart';

class ProgressCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool showProgress;
  final VoidCallback onTap;

  const ProgressCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.showProgress,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: const Color(0xFFF2F6F3),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF1E513A))),
            const SizedBox(height: 12),
            Text(subtitle, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
            if (showProgress) ...[
              const SizedBox(height: 12),
              Container(height: 10, decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(5))),
            ]
          ],
        ),
      ),
    );
  }
}
