import 'package:flutter/material.dart';

class CategoryInfo {
  final String id;
  final String label;
  final IconData icon;
  final Color color;

  const CategoryInfo({
    required this.id,
    required this.label,
    required this.icon,
    required this.color,
  });

  static const List<CategoryInfo> all = [
    CategoryInfo(
      id: 'hospital',
      label: 'Hospitals',
      icon: Icons.local_hospital,
      color: Color(0xFFE53935),
    ),
    CategoryInfo(
      id: 'police',
      label: 'Police',
      icon: Icons.local_police,
      color: Color(0xFF1565C0),
    ),
    CategoryInfo(
      id: 'library',
      label: 'Libraries',
      icon: Icons.local_library,
      color: Color(0xFF6A1B9A),
    ),
    CategoryInfo(
      id: 'utility',
      label: 'Utilities',
      icon: Icons.electrical_services,
      color: Color(0xFFF57F17),
    ),
    CategoryInfo(
      id: 'restaurant',
      label: 'Restaurants',
      icon: Icons.restaurant,
      color: Color(0xFF2E7D32),
    ),
    CategoryInfo(
      id: 'cafe',
      label: 'Cafés',
      icon: Icons.coffee,
      color: Color(0xFF4E342E),
    ),
    CategoryInfo(
      id: 'park',
      label: 'Parks',
      icon: Icons.park,
      color: Color(0xFF00695C),
    ),
    CategoryInfo(
      id: 'tourist',
      label: 'Attractions',
      icon: Icons.attractions,
      color: Color(0xFFAD1457),
    ),
  ];

  static CategoryInfo byId(String id) {
    return all.firstWhere((c) => c.id == id,
        orElse: () => all.first);
  }
}
