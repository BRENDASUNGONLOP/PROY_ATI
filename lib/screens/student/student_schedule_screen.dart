import 'package:flutter/material.dart';

import '../../widgets/student/schedule_item.dart';

class StudentScheduleScreen extends StatelessWidget {
  const StudentScheduleScreen({super.key});

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
            const Text('Mi horario', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF1E513A))),
            const SizedBox(height: 6),
            Text('Consulta tus clases y actividades programadas.', style: TextStyle(fontSize: 14, color: Colors.grey[600])),
            const SizedBox(height: 24),
            const ScheduleItem(
              time: '08:00',
              title: 'Lunes - Comprensión lectora',
              place: 'Aula 2',
              backgroundColor: Color(0xFFF2F6F3),
              timeColor: Color(0xFF1E513A),
            ),
            const SizedBox(height: 16),
            const ScheduleItem(
              time: '10:00',
              title: 'Martes - Actividades de aprendizaje',
              place: 'Aula virtual',
              backgroundColor: Color(0xFFFAF2F4),
              timeColor: Color(0xFF831030),
            ),
            const SizedBox(height: 32),
            Center(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(side: const BorderSide(color: Color(0xFF1E513A))),
                onPressed: () {},
                child: const Text('Volver al inicio', style: TextStyle(color: Color(0xFF1E513A))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
