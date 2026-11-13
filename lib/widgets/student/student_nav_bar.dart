import 'package:flutter/material.dart';

class StudentNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onSelected;

  const StudentNavBar({super.key, required this.currentIndex, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1E513A),
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
      child: Row(
        children: [
          _navLink('Inicio', 0),
          const SizedBox(width: 30),
          _navLink('Mi progreso', 1),
          const SizedBox(width: 30),
          _navLink('Mi horario', 2),
          const SizedBox(width: 30),
          _navLink('Consultar ATI...', 3),
        ],
      ),
    );
  }

  Widget _navLink(String title, int index) {
    bool isSelected = currentIndex == index;
    return InkWell(
      onTap: () => onSelected(index),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.white70,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          fontSize: 15,
        ),
      ),
    );
  }
}
