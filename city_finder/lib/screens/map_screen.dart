import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../data/kigali_places.dart';
import '../models/category_info.dart';
import '../models/place.dart';
import 'place_detail_screen.dart';
import 'search_screen.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  String? _selectedCategory;
  Place? _tappedPlace;

  List<Place> get _visiblePlaces => _selectedCategory == null
      ? kigaliPlaces
      : kigaliPlaces
          .where((p) => p.categoryId == _selectedCategory)
          .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore Kigali'),
        backgroundColor: const Color(0xFF20A850),
        foregroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          // Map
          FlutterMap(
            options: const MapOptions(
              initialCenter: LatLng(-1.9441, 30.0619),
              initialZoom: 13,
            ),
            children: [
              TileLayer(
                urlTemplate:
                    'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.city_finder',
              ),
              MarkerLayer(
                markers: _visiblePlaces.map((place) {
                  final cat = CategoryInfo.byId(place.categoryId);
                  return Marker(
                    point: LatLng(place.latitude, place.longitude),
                    width: 40,
                    height: 40,
                    child: GestureDetector(
                      onTap: () => setState(() => _tappedPlace = place),
                      child: Container(
                        decoration: BoxDecoration(
                          color: cat.color,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                          boxShadow: [
                            BoxShadow(
                              color: cat.color.withOpacity(0.4),
                              blurRadius: 6,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Icon(cat.icon,
                            color: Colors.white, size: 18),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),

          // Category filter chips
          Positioned(
            top: 8,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  _FilterChip(
                    label: 'All',
                    selected: _selectedCategory == null,
                    color: const Color(0xFF20A850),
                    onTap: () =>
                        setState(() => _selectedCategory = null),
                  ),
                  ...CategoryInfo.all.map(
                    (cat) => _FilterChip(
                      label: cat.label,
                      selected: _selectedCategory == cat.id,
                      color: cat.color,
                      onTap: () => setState(
                          () => _selectedCategory = cat.id),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Place popup card
          if (_tappedPlace != null)
            Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: _PlacePopup(
                place: _tappedPlace!,
                onClose: () => setState(() => _tappedPlace = null),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        PlaceDetailScreen(place: _tappedPlace!),
                  ),
                ),
              ),
            ),
        ],
      ),
      bottomNavigationBar: _MapBottomNav(),
    );
  }
}

class _FilterChip extends StatelessWidget {
  const _FilterChip({
    required this.label,
    required this.selected,
    required this.color,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6),
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding:
              const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
          decoration: BoxDecoration(
            color: selected ? color : Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                color: selected ? color : Colors.grey[300]!),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Text(
            label,
            style: TextStyle(
              color: selected ? Colors.white : Colors.black87,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}

class _PlacePopup extends StatelessWidget {
  const _PlacePopup({
    required this.place,
    required this.onClose,
    required this.onTap,
  });

  final Place place;
  final VoidCallback onClose;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final cat = CategoryInfo.byId(place.categoryId);
    return Material(
      borderRadius: BorderRadius.circular(16),
      elevation: 8,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: cat.color.withOpacity(0.12),
                  shape: BoxShape.circle,
                ),
                child: Icon(cat.icon, color: cat.color, size: 22),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      place.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 14),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      place.address,
                      style: TextStyle(
                          color: Colors.grey[600], fontSize: 12),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 4),
              Icon(Icons.arrow_forward_ios,
                  size: 14, color: Colors.grey[500]),
              IconButton(
                icon: const Icon(Icons.close, size: 18),
                color: Colors.grey[400],
                onPressed: onClose,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MapBottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 1,
      selectedItemColor: const Color(0xFF20A850),
      unselectedItemColor: Colors.grey,
      onTap: (i) {
        if (i == 1) return;
        if (i == 0) {
          Navigator.of(context).popUntil((r) => r.isFirst);
        } else if (i == 2) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const SearchScreen()),
          );
        }
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      ],
    );
  }
}
