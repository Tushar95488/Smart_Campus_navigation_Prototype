import 'package:flutter/material.dart';
import '../models/building_details.dart';

class BuildingExplorerScreen extends StatelessWidget {
  const BuildingExplorerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buildings', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: campusBuildings.length,
        itemBuilder: (context, index) {
          final building = campusBuildings[index];
          return Card(
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Theme(
              // Removes borders connecting ExpansionTiles
              data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                title: Text(
                  building.buildingName,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                leading: Icon(Icons.domain, color: Theme.of(context).colorScheme.primary),
                children: building.floors.map((floor) {
                  return ExpansionTile(
                    title: Text(
                      floor.floorName,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    leading: const Icon(Icons.layers),
                children: () {
                  final Map<String, List<Room>> groupedRooms = {};
                  for (var room in floor.rooms) {
                    groupedRooms.putIfAbsent(room.category, () => []).add(room);
                  }
                  
                  return groupedRooms.entries.map((entry) {
                    return ExpansionTile(
                      // Only add left padding to indent the category from the floor
                      tilePadding: const EdgeInsets.only(left: 40, right: 16),
                      title: Text(
                        entry.key,
                        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                      leading: Icon(
                        entry.key == 'Faculty Cabins' ? Icons.person 
                        : entry.key == 'Labs' ? Icons.science 
                        : entry.key == 'Lecture Halls' ? Icons.class_
                        : entry.key == 'Offices' ? Icons.work
                        : Icons.meeting_room,
                        size: 22,
                        color: Colors.grey[700],
                      ),
                      children: entry.value.map((room) {
                        return ListTile(
                          contentPadding: const EdgeInsets.only(left: 72, right: 16),
                          title: Text(room.description, style: const TextStyle(fontSize: 14)),
                          subtitle: Text('Room: ${room.roomNumber}', style: const TextStyle(fontSize: 12)),
                          leading: const Icon(Icons.meeting_room, size: 20),
                          onTap: () {
                            // Informational only for now
                          },
                        );
                      }).toList(),
                    );
                  }).toList();
                }(),
                  );
                }).toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}
