import 'package:flutter/material.dart';

class ScheduleItem extends StatelessWidget {
  final String time;
  final String title;
  final String place;
  final Color backgroundColor;
  final Color timeColor;

  const ScheduleItem({
    super.key,
    required this.time,
    required this.title,
    required this.place,
    required this.backgroundColor,
    required this.timeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(color: timeColor, borderRadius: BorderRadius.circular(8)),
            child: Text(time, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(place, style: const TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}
