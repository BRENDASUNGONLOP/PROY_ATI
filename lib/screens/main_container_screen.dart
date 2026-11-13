import 'package:flutter/material.dart';

import 'admin/admin_dashboard_screen.dart';
import 'student/student_navigator.dart';
import 'teacher/teacher_dashboard_screen.dart';

class MainContainerScreen extends StatefulWidget {
  const MainContainerScreen({super.key});

  @override
  State<MainContainerScreen> createState() => _MainContainerScreenState();
}

class _MainContainerScreenState extends State<MainContainerScreen> {
  String _rolActual = 'estudiante'; // Cambia a 'estudiante', 'maestro' o 'admin'

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65.0),
        child: AppBar(
          backgroundColor: const Color(0xFF1E513A),
          foregroundColor: Colors.white,
          title: Row(
            children: [
              const Text(
                'ATI | Agente Tutor Inteligente',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: _rolActual,
                    dropdownColor: const Color(0xFF1E513A),
                    style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                    icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
                    items: const [
                      DropdownMenuItem(value: 'estudiante', child: Text('Rol: Estudiante')),
                      DropdownMenuItem(value: 'maestro', child: Text('Rol: Tutor / Profesor')),
                      DropdownMenuItem(value: 'admin', child: Text('Rol: Administrador')),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _rolActual = value!;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: _buildCurrentBody(),
    );
  }

  Widget _buildCurrentBody() {
    if (_rolActual == 'estudiante') {
      return const StudentNavigator();
    } else if (_rolActual == 'maestro') {
      return const TeacherDashboardScreen();
    } else {
      return const AdminDashboardScreen();
    }
  }
}
