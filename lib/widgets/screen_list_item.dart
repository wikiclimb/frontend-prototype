import 'package:flutter/material.dart';
import '../models/screen_data.dart';

/// Renders one item on the list of screens.
class ScreenListItem extends StatelessWidget {
  const ScreenListItem({Key? key, required this.screen}) : super(key: key);

  final ScreenData screen;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(screen.iconData),
      title: Text(screen.title),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {
        Navigator.pushNamed(
          context,
          screen.id,
        );
      },
    );
  }
}
