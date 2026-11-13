import 'package:flutter/material.dart';

import '../../widgets/student/student_nav_bar.dart';
import 'student_ati_consult_screen.dart';
import 'student_home_screen.dart';
import 'student_progress_detail_screen.dart';
import 'student_schedule_screen.dart';

class StudentNavigator extends StatefulWidget {
  const StudentNavigator({super.key});

  @override
  State<StudentNavigator> createState() => _StudentNavigatorState();
}

class _StudentNavigatorState extends State<StudentNavigator> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StudentNavBar(
          currentIndex: _currentIndex,
          onSelected: (index) => setState(() => _currentIndex = index),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: _getSelectedScreen(),
          ),
        ),
      ],
    );
  }

  Widget _getSelectedScreen() {
    switch (_currentIndex) {
      case 1:
        return const StudentProgressDetailScreen();
      case 2:
        return const StudentScheduleScreen();
      case 3:
        return const StudentAtiConsultScreen();
      default:
        return StudentHomeScreen(onNavigate: (idx) => setState(() => _currentIndex = idx));
    }
  }
}
