import 'package:flutter/material.dart';
import '../../models/area.dart';

/// Renders a widget that displays area information inside a list
class AreaListItem extends StatelessWidget {
  const AreaListItem({Key? key, required this.area}) : super(key: key);

  final Area area;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Not implemented yet'),
          ),
        );
      },
      child: Card(
        child: Column(
          children: [
            Stack(
              children: [
                FadeInImage.assetNetwork(
                  // height: 300,
                  placeholder: 'graphics/wikiclimb-logo-1600-900.png',
                  image: area.backgroundUrl,
                ),
                Positioned(
                  bottom: 8,
                  left: 8,
                  child: Text(
                    area.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset.zero,
                          blurRadius: 3.0,
                          color: Colors.black87,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: SizedBox(
                height: 24,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: area.breadcrumbs.length,
                    itemBuilder: (context, index) {
                      return Text(
                        area.breadcrumbs[index],
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 2.0,
                        ),
                        child: Text('»',
                            style: TextStyle(
                              color: Colors.redAccent,
                            )),
                      );
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  area.description,
                ),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
