import 'package:flutter/material.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFF2F6F3),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Recomendación del ATI', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xFF1E513A))),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.warning_amber_rounded, size: 20),
              SizedBox(width: 8),
              Expanded(child: Text('Tienes una actividad pendiente. Organiza tu tiempo para completarla.', style: TextStyle(fontSize: 14))),
            ],
          ),
        ],
      ),
    );
  }
}
