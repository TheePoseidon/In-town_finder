import 'package:flutter/material.dart';

class AppBottomNav extends StatelessWidget {
  const AppBottomNav({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: const Color(0xFF20A850),
      unselectedItemColor: Colors.grey,
      onTap: (i) {
        if (i == currentIndex) return;
        if (i == 0) {
          // lazy import to avoid circular dep
          Navigator.of(context).popUntil((r) => r.isFirst);
        } else if (i == 1) {
          // push map
          _pushNamed(context, '/map');
        } else if (i == 2) {
          _pushNamed(context, '/search');
        }
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      ],
    );
  }

  void _pushNamed(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }
}
