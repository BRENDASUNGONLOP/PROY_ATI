import 'package:flutter/material.dart';

import '../../widgets/student/progress_row.dart';

class StudentProgressDetailScreen extends StatelessWidget {
  const StudentProgressDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Mi progreso académico', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF1E513A))),
            const SizedBox(height: 6),
            Text('Consulta tus avances y las actividades completadas.', style: TextStyle(fontSize: 14, color: Colors.grey[600])),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(color: const Color(0xFFF2F6F3), borderRadius: BorderRadius.circular(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Progreso general', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('75%', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF1E513A))),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(height: 10, decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(5))),
                  const SizedBox(height: 8),
                  Text('75 de cada 100 puntos de progreso', style: TextStyle(fontSize: 12, color: Colors.grey[600])),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(child: Container(padding: const EdgeInsets.all(12), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)), child: const Text('Actividades completadas\n6', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF1E513A))))),
                      const SizedBox(width: 16),
                      Expanded(child: Container(padding: const EdgeInsets.all(12), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)), child: const Text('Pendientes\n2', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF831030))))),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Text('Mis avances', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            const ProgressRow(title: 'Compresión lectora', percent: '80%'),
            const SizedBox(height: 12),
            const ProgressRow(title: 'Vocabulario', percent: '60%'),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(color: const Color(0xFFF2F6F3), borderRadius: BorderRadius.circular(8)),
              child: const Text('⚠️ Tienes una actividad pendiente. Organiza tu tiempo para completarla.', style: TextStyle(fontSize: 13)),
            ),
            const SizedBox(height: 32),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1E513A), foregroundColor: Colors.white),
                onPressed: () {},
                child: const Text('Volver al inicio'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
