import 'package:flutter/material.dart';

import '../../widgets/admin/admin_card.dart';
import '../../widgets/admin/system_metric_item.dart';
import '../../widgets/common/app_sidebar.dart';
import '../../widgets/common/page_header.dart';
import '../../widgets/common/sidebar_item.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const AppSidebar(
          items: [
            SidebarItem(title: 'Inicio', icon: Icons.home, isSelected: true),
            SidebarItem(title: 'Usuarios', icon: Icons.people_outline, isSelected: false),
            SidebarItem(title: 'Roles y permisos', icon: Icons.admin_panel_settings_outlined, isSelected: false),
            SidebarItem(title: 'Configuración', icon: Icons.settings_outlined, isSelected: false),
            SidebarItem(title: 'Seguridad', icon: Icons.verified_user_outlined, isSelected: false),
            SidebarItem(title: 'Reportes', icon: Icons.description_outlined, isSelected: false),
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
                  title: 'Panel de administración',
                  subtitle: 'Gestiona y supervisa el funcionamiento general de ATI.',
                ),
                const SizedBox(height: 24),
                const Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: [
                    AdminCard(title: 'Usuarios', subtitle: 'Gestiona cuentas de estudiantes, tutores y administradores.', icon: Icons.people_outline, buttonText: 'Administrar'),
                    AdminCard(title: 'Roles y permisos', subtitle: 'Configura roles y permisos de acceso en la plataforma.', icon: Icons.lock_outline, buttonText: 'Configurar'),
                    AdminCard(title: 'Configuración', subtitle: 'Ajusta los parámetros generales del sistema y la plataforma.', icon: Icons.settings_outlined, buttonText: 'Configurar'),
                    AdminCard(title: 'Seguridad', subtitle: 'Supervisa accesos, sesiones y políticas de seguridad.', icon: Icons.verified_user_outlined, buttonText: 'Supervisar'),
                  ],
                ),
                const SizedBox(height: 32),
                const Text(
                  'Actividad del sistema',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: const Wrap(
                    spacing: 60,
                    runSpacing: 20,
                    children: [
                      SystemMetricItem(title: 'Usuarios activos hoy', value: '128', icon: Icons.person_outline),
                      SystemMetricItem(title: 'Solicitudes atendidas hoy', value: '18', icon: Icons.task_alt),
                      SystemMetricItem(title: 'Accesos al sistema hoy', value: '356', icon: Icons.security),
                      SystemMetricItem(title: 'Reportes generados hoy', value: '7', icon: Icons.insert_drive_file_outlined),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
