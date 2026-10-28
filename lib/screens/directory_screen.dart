import 'package:flutter/material.dart';
import '../models/poi.dart';

class DirectoryScreen extends StatefulWidget {
  const DirectoryScreen({super.key});

  @override
  State<DirectoryScreen> createState() => _DirectoryScreenState();
}

class _DirectoryScreenState extends State<DirectoryScreen> {
  String _searchQuery = '';
  POIType? _selectedFilter;

  List<POI> get _filteredPOIs {
    return dummyPOIs.where((poi) {
      final matchesSearch = poi.name.toLowerCase().contains(_searchQuery.toLowerCase());
      final matchesFilter = _selectedFilter == null || poi.type == _selectedFilter;
      return matchesSearch && matchesFilter;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Directory', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for departments, labs...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Theme.of(context).colorScheme.surfaceContainerHighest,
              ),
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
            ),
          ),
          
          // Filter Chips
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                _buildFilterChip('All', null),
                const SizedBox(width: 8),
                _buildFilterChip('Departments', POIType.department),
                const SizedBox(width: 8),
                _buildFilterChip('Labs', POIType.lab),
                const SizedBox(width: 8),
                _buildFilterChip('Amenities', POIType.amenity),
              ],
            ),
          ),
          
          const SizedBox(height: 16),
          
          // List View
          Expanded(
            child: _filteredPOIs.isEmpty
                ? const Center(child: Text('No results found.'))
                : ListView.builder(
                    itemCount: _filteredPOIs.length,
                    itemBuilder: (context, index) {
                      final poi = _filteredPOIs[index];
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                          child: Icon(
                            _getIconForType(poi.type),
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        title: Text(
                          poi.name,
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          _getLabelForType(poi.type),
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.directions),
                          onPressed: () {
                            // Focus on map action
                          },
                        ),
                        onTap: () {
                          // Tap to view details or navigate to map
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChip(String label, POIType? type) {
    final isSelected = _selectedFilter == type;
    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (selected) {
        setState(() {
          _selectedFilter = selected ? type : null;
        });
      },
      selectedColor: Theme.of(context).colorScheme.primaryContainer,
      checkmarkColor: Theme.of(context).colorScheme.primary,
    );
  }

  IconData _getIconForType(POIType type) {
    switch (type) {
      case POIType.department:
        return Icons.business;
      case POIType.lab:
        return Icons.science;
      case POIType.amenity:
        return Icons.local_cafe;
    }
  }

  String _getLabelForType(POIType type) {
    switch (type) {
      case POIType.department:
        return 'Department';
      case POIType.lab:
        return 'Lab';
      case POIType.amenity:
        return 'Amenity';
    }
  }
}
