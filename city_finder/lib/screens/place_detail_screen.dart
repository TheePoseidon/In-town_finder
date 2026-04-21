import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/place.dart';
import '../models/category_info.dart';

class PlaceDetailScreen extends StatelessWidget {
  const PlaceDetailScreen({super.key, required this.place});

  final Place place;

  Future<void> _openDirections() async {
    final uri = Uri.parse(
        'https://www.google.com/maps/dir/?api=1&destination=${place.latitude},${place.longitude}');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  Future<void> _callPhone() async {
    final uri = Uri.parse('tel:${place.phone}');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    final cat = CategoryInfo.byId(place.categoryId);
    final point = LatLng(place.latitude, place.longitude);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 220,
            pinned: true,
            backgroundColor: cat.color,
            foregroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: _MiniMap(point: point, color: cat.color),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Category chip + name
                  Chip(
                    avatar: Icon(cat.icon, size: 14, color: cat.color),
                    label: Text(cat.label,
                        style: TextStyle(
                            color: cat.color,
                            fontSize: 12,
                            fontWeight: FontWeight.w600)),
                    backgroundColor: cat.color.withOpacity(0.1),
                    side: BorderSide.none,
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    visualDensity: VisualDensity.compact,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    place.name,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.location_on,
                          size: 16, color: Colors.grey[600]),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          place.address,
                          style: TextStyle(
                              color: Colors.grey[600], fontSize: 14),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Action buttons
                  Row(
                    children: [
                      Expanded(
                        child: FilledButton.icon(
                          onPressed: _openDirections,
                          icon: const Icon(Icons.directions),
                          label: const Text('Directions'),
                          style: FilledButton.styleFrom(
                            backgroundColor: cat.color,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            padding:
                                const EdgeInsets.symmetric(vertical: 12),
                          ),
                        ),
                      ),
                      if (place.phone != null) ...[
                        const SizedBox(width: 10),
                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: _callPhone,
                            icon: Icon(Icons.phone, color: cat.color),
                            label: Text('Call',
                                style: TextStyle(color: cat.color)),
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: cat.color),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              padding:
                                  const EdgeInsets.symmetric(vertical: 12),
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),

                  const SizedBox(height: 24),
                  const Divider(),
                  const SizedBox(height: 16),

                  // Description
                  Text(
                    'About',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    place.description,
                    style: TextStyle(
                        color: Colors.grey[700],
                        height: 1.5,
                        fontSize: 14),
                  ),

                  if (place.hours != null || place.phone != null) ...[
                    const SizedBox(height: 20),
                    Text(
                      'Details',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 8),
                    if (place.hours != null)
                      _DetailRow(
                          icon: Icons.access_time,
                          label: 'Hours',
                          value: place.hours!),
                    if (place.phone != null)
                      _DetailRow(
                          icon: Icons.phone,
                          label: 'Phone',
                          value: place.phone!),
                    if (place.website != null)
                      _DetailRow(
                          icon: Icons.language,
                          label: 'Website',
                          value: place.website!),
                  ],
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MiniMap extends StatelessWidget {
  const _MiniMap({required this.point, required this.color});

  final LatLng point;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        initialCenter: point,
        initialZoom: 15,
        interactionOptions:
            const InteractionOptions(flags: InteractiveFlag.none),
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.city_finder',
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: point,
              width: 48,
              height: 48,
              child: Icon(Icons.location_pin, color: color, size: 48),
            ),
          ],
        ),
      ],
    );
  }
}

class _DetailRow extends StatelessWidget {
  const _DetailRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 18, color: Colors.grey[500]),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label,
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 11,
                        fontWeight: FontWeight.w500)),
                Text(value,
                    style: const TextStyle(
                        color: Colors.black87, fontSize: 14)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
