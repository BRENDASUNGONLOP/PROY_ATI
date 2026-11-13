import 'package:flutter/material.dart';

/// Barra lateral compartida por los paneles de Tutor y Administrador.
class AppSidebar extends StatelessWidget {
  final List<Widget> items;
  final VoidCallback? onLogout;

  const AppSidebar({super.key, required this.items, this.onLogout});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          ...items,
          const Spacer(),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton.icon(
              style: TextButton.styleFrom(foregroundColor: Colors.red),
              onPressed: onLogout ?? () {},
              icon: const Icon(Icons.logout, size: 18),
              label: const Text('Cerrar sesión'),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
