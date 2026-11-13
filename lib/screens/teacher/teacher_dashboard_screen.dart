import 'package:flutter/material.dart';

import '../../widgets/common/app_sidebar.dart';
import '../../widgets/common/page_header.dart';
import '../../widgets/common/sidebar_item.dart';
import '../../widgets/teacher/metric_card.dart';
import '../../widgets/teacher/requests_table.dart';

class TeacherDashboardScreen extends StatefulWidget {
  const TeacherDashboardScreen({super.key});

  @override
  State<TeacherDashboardScreen> createState() => _TeacherDashboardScreenState();
}

class _TeacherDashboardScreenState extends State<TeacherDashboardScreen> {
  int _teacherNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppSidebar(
          items: [
            _sidebarItem('Inicio', Icons.home, 0),
            _sidebarItem('Solicitudes', Icons.chat_bubble_outline, 1),
            _sidebarItem('Atendidas', Icons.check_circle_outline, 2),
          ],
        ),
        const VerticalDivider(width: 1, color: Colors.grey),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PageHeader(
                  title: 'Panel de atención del tutor',
                  subtitle: 'ATI canaliza a los estudiantes que requieren acompañamiento humano.',
                ),
                const SizedBox(height: 24),
                Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: [
                    MetricCard(number: '3', title: 'Nuevas solicitudes', subtitle: 'Requieren tu atención', icon: Icons.chat_bubble, bgColor: Colors.teal.shade50),
                    MetricCard(number: '5', title: 'En seguimiento', subtitle: 'Casos en proceso', icon: Icons.access_time, bgColor: Colors.amber.shade50),
                    MetricCard(number: '12', title: 'Atendidas', subtitle: 'Casos concluidos', icon: Icons.check_circle_outline, bgColor: Colors.green.shade50),
                  ],
                ),
                const SizedBox(height: 32),
                const Text(
                  'Solicitudes recientes',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
                ),
                const SizedBox(height: 16),
                const RequestsTable(),
                const SizedBox(height: 24),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1E513A),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    onPressed: () {},
                    child: const Text('Ver todas las solicitudes'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _sidebarItem(String title, IconData icon, int index) {
    return SidebarItem(
      title: title,
      icon: icon,
      isSelected: _teacherNavIndex == index,
      onTap: () => setState(() => _teacherNavIndex = index),
    );
  }
}
