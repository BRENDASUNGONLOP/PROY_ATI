import 'package:flutter/material.dart';

import '../../widgets/student/ask_ati_hero_card.dart';
import '../../widgets/student/progress_card.dart';
import '../../widgets/student/recommendation_card.dart';
import '../../widgets/student/simple_card.dart';

class StudentHomeScreen extends StatelessWidget {
  final Function(int) onNavigate;
  const StudentHomeScreen({super.key, required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('¡Hola! Bienvenido a tu espacio de aprendizaje', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black87)),
          const SizedBox(height: 8),
          Text('Consulta tu avance y descubre cuál es el siguiente paso.', style: TextStyle(fontSize: 15, color: Colors.grey[700])),
          const SizedBox(height: 32),
          LayoutBuilder(
            builder: (context, constraints) {
              bool isDesktop = constraints.maxWidth >= 900;
              return isDesktop
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              ProgressCard(title: 'Mi progreso académico', subtitle: '75% Completado', showProgress: true, onTap: () => onNavigate(1)),
                              const SizedBox(height: 20),
                              const RecommendationCard(),
                              const SizedBox(height: 20),
                              AskAtiHeroCard(onTap: () => onNavigate(3)),
                            ],
                          ),
                        ),
                        const SizedBox(width: 30),
                        Expanded(
                          child: Column(
                            children: [
                              SimpleCard(title: 'Mi horario', subtitle: 'Consulta tus actividades y fechas importantes', onTap: () => onNavigate(2)),
                              const SizedBox(height: 16),
                              SimpleCard(title: 'Mis actividades', subtitle: 'Revisa tus tareas y actividades pendientes.', onTap: () => onNavigate(1)),
                              const SizedBox(height: 16),
                              SimpleCard(title: 'Consultar ATI', subtitle: 'Solicita orientación para continuar aprendiendo.', onTap: () => onNavigate(3)),
                              const SizedBox(height: 16),
                              SimpleCard(title: 'Buscar tutor', subtitle: 'Obten orientacion por docentes calificados', onTap: () {}),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        ProgressCard(title: 'Mi progreso académico', subtitle: '75% Completado', showProgress: true, onTap: () => onNavigate(1)),
                        const SizedBox(height: 20),
                        const RecommendationCard(),
                        const SizedBox(height: 20),
                        AskAtiHeroCard(onTap: () => onNavigate(3)),
                      ],
                    );
            },
          ),
        ],
      ),
    );
  }
}
