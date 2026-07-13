import 'package:flutter/material.dart';

import 'package:fluxa_watch/core/core.dart';

class FwBottomNavigation extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const FwBottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 82,
      decoration: const BoxDecoration(
        color: Color(0xFF121212),
        border: Border(top: BorderSide(color: Color(0xFF2B2B2B), width: 1)),
      ),
      child: Row(
        children: [
          _item(Icons.home_rounded, "Início", 0),
          _item(Icons.search_rounded, "Descobrir", 1),
          _item(Icons.calendar_month_rounded, "Calendário", 2),
          _item(Icons.bar_chart_rounded, "Estatísticas", 3),
          _item(Icons.person_rounded, "Perfil", 4),
        ],
      ),
    );
  }

  Widget _item(IconData icon, String label, int index) {
    final selected = currentIndex == index;

    return Expanded(
      child: InkWell(
        onTap: () => onTap(index),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: selected ? AppColors.primary : Colors.grey,
                size: 28,
              ),
              const SizedBox(height: 4),
              Text(
                label,
                style: TextStyle(
                  color: selected ? AppColors.primary : Colors.grey,
                  fontSize: 12,
                  fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
