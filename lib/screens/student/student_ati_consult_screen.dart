import 'package:flutter/material.dart';

class StudentAtiConsultScreen extends StatefulWidget {
  const StudentAtiConsultScreen({super.key});

  @override
  State<StudentAtiConsultScreen> createState() => _StudentAtiConsultScreenState();
}

class _StudentAtiConsultScreenState extends State<StudentAtiConsultScreen> {
  bool _mostrarRespuesta = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Consulta al ATI', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black87)),
          const SizedBox(height: 8),
          Text('¿En qué tema necesitas ayuda?', style: TextStyle(fontSize: 15, color: Colors.grey[700])),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade400),
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: '¿Cómo puedo mejorar mi comprensión lectora?',
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 24),
          if (!_mostrarRespuesta) ...[
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF831030), foregroundColor: Colors.white),
                onPressed: () => setState(() => _mostrarRespuesta = true),
                child: const Text('Enviar pregunta'),
              ),
            ),
          ] else ...[
            const SizedBox(height: 16),
            const Text('Respuesta', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Text('Para mejorar tu comprensión lectora, identifica la idea principal de cada párrafo y anota las palabras clave. Después, resume el texto con tus propias palabras.', style: TextStyle(color: Colors.grey[800])),
            const SizedBox(height: 16),
            const Text('Recomendación', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(color: const Color(0xFFF2F6F3), borderRadius: BorderRadius.circular(8)),
              child: const Text('Practica con un texto breve durante 15 minutos al día.'),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF831030), foregroundColor: Colors.white),
                  onPressed: () => setState(() => _mostrarRespuesta = false),
                  child: const Text('Hacer otra pregunta'),
                ),
                const SizedBox(width: 16),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Finalizar'),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
