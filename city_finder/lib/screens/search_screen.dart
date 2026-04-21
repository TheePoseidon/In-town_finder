import 'package:flutter/material.dart';
import '../data/kigali_places.dart';
import '../models/place.dart';
import '../models/category_info.dart';
import 'place_detail_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Place> _results = [];
  bool _hasSearched = false;
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onSearch(String query) {
    setState(() {
      _hasSearched = query.isNotEmpty;
      _results = query.isEmpty ? [] : searchPlaces(query);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _controller,
          autofocus: true,
          onChanged: _onSearch,
          style: const TextStyle(color: Colors.white),
          cursorColor: Colors.white,
          decoration: const InputDecoration(
            hintText: 'Search hospitals, parks, cafés…',
            hintStyle: TextStyle(color: Colors.white70),
            border: InputBorder.none,
          ),
        ),
        backgroundColor: const Color(0xFF20A850),
        foregroundColor: Colors.white,
        actions: [
          if (_controller.text.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {
                _controller.clear();
                _onSearch('');
              },
            ),
        ],
      ),
      body: _hasSearched
          ? _results.isEmpty
              ? const Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.search_off, size: 48, color: Colors.grey),
                      SizedBox(height: 12),
                      Text('No results found',
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.all(12),
                  itemCount: _results.length,
                  itemBuilder: (context, index) {
                    final place = _results[index];
                    final cat = CategoryInfo.byId(place.categoryId);
                    return Card(
                      margin: const EdgeInsets.only(bottom: 8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: ListTile(
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: cat.color.withValues(alpha: 0.12),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(cat.icon,
                              color: cat.color, size: 20),
                        ),
                        title: Text(place.name,
                            style: const TextStyle(
                                fontWeight: FontWeight.w600)),
                        subtitle: Text(
                          place.address,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.grey[600], fontSize: 12),
                        ),
                        trailing: Chip(
                          label: Text(cat.label,
                              style: TextStyle(
                                  color: cat.color,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600)),
                          backgroundColor: cat.color.withValues(alpha: 0.1),
                          side: BorderSide.none,
                          visualDensity: VisualDensity.compact,
                        ),
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                PlaceDetailScreen(place: place),
                          ),
                        ),
                      ),
                    );
                  },
                )
          : _buildSuggestions(context),
    );
  }

  Widget _buildSuggestions(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          'Browse by category',
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: Colors.grey[600]),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: CategoryInfo.all.map((cat) {
            return ActionChip(
              avatar: Icon(cat.icon, size: 16, color: cat.color),
              label: Text(cat.label),
              onPressed: () => _onSearch(cat.label),
              backgroundColor: cat.color.withValues(alpha: 0.08),
              side: BorderSide(color: cat.color.withValues(alpha: 0.3)),
            );
          }).toList(),
        ),
      ],
    );
  }
}
