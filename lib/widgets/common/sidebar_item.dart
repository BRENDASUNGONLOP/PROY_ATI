import 'package:flutter/material.dart';

class SidebarItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isSelected;
  final VoidCallback? onTap;

  const SidebarItem({
    super.key,
    required this.title,
    required this.icon,
    required this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFFF2F5F3) : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Icon(icon, color: isSelected ? const Color(0xFF1E513A) : Colors.grey[700]),
        title: Text(
          title,
          style: TextStyle(
            color: isSelected ? const Color(0xFF1E513A) : Colors.black87,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        onTap: onTap ?? () {},
      ),
    );
  }
}
