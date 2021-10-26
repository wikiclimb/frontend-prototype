import 'package:flutter/material.dart';
import '../models/area.dart';
import '../widgets/area/area_list_item.dart';

/// Display a list of areas in the system.
class AreaListScreen extends StatelessWidget {
  const AreaListScreen({
    Key? key,
    required this.areas,
  }) : super(key: key);

  static const String id = '/area-list';
  final List<Area> areas;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Areas'),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView.builder(
            itemCount: areas.length,
            itemBuilder: (context, index) {
              return AreaListItem(
                key: UniqueKey(),
                area: areas[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
