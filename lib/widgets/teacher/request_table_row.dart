import 'package:flutter/material.dart';

class RequestTableRow extends StatelessWidget {
  final String initials;
  final String name;
  final String motif;
  final String status;
  final Color badgeBg;
  final Color badgeFg;
  final String date;

  const RequestTableRow({
    super.key,
    required this.initials,
    required this.name,
    required this.motif,
    required this.status,
    required this.badgeBg,
    required this.badgeFg,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: Text(initials, style: const TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 12)),
              ),
              const SizedBox(width: 12),
              Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(motif, style: TextStyle(color: Colors.grey[700], fontSize: 13)),
        ),
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(color: badgeBg, borderRadius: BorderRadius.circular(12)),
              child: Text(status, style: TextStyle(color: badgeFg, fontWeight: FontWeight.bold, fontSize: 11)),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(date, style: TextStyle(color: Colors.grey[600], fontSize: 13)),
        ),
        const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.grey),
      ],
    );
  }
}
