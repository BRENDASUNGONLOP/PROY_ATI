import 'package:flutter/material.dart';

import 'request_table_row.dart';

class RequestsTable extends StatelessWidget {
  const RequestsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        children: [
          Row(
            children: const [
              Expanded(flex: 2, child: Text('Estudiante', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey))),
              Expanded(flex: 3, child: Text('Motivo de canalización', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey))),
              Expanded(flex: 1, child: Text('Estado', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey))),
              Expanded(flex: 1, child: Text('Fecha', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey))),
              SizedBox(width: 30),
            ],
          ),
          const Divider(height: 24),
          RequestTableRow(initials: 'ML', name: 'María López', motif: 'Dificultad para comprender los temas', status: 'Nueva', badgeBg: Colors.pink.shade100, badgeFg: Colors.pink.shade800, date: '28/10/2026'),
          const Divider(height: 24),
          RequestTableRow(initials: 'CR', name: 'Carlos Ruiz', motif: 'Situación académica que requiere acompañamiento', status: 'En seguimiento', badgeBg: Colors.amber.shade100, badgeFg: Colors.brown.shade800, date: '27/10/2026'),
          const Divider(height: 24),
          RequestTableRow(initials: 'AP', name: 'Ana Pérez', motif: 'Orientación sobre actividad', status: 'En seguimiento', badgeBg: Colors.amber.shade100, badgeFg: Colors.brown.shade800, date: '27/10/2026'),
        ],
      ),
    );
  }
}
