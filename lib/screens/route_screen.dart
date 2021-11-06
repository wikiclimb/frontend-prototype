import 'package:flutter/material.dart';

/// Renders a widget that displays area information inside a list
class RouteScreen extends StatelessWidget {
  const RouteScreen({Key? key}) : super(key: key);

  static const String id = '/route';

  final breadcrumbs = const [
    'Asia',
    'Thailand',
    'Tonsai',
    'Beach',
    'Moon Safari',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // Experimenting with the UX hiding the AppBar.
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                      child: Text(
                        'Moon Safari',
                        style: TextStyle(
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
                    )
                  ]),
              stretchModes: const [
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
              ],
              background: FadeInImage.assetNetwork(
                placeholder: 'graphics/wikiclimb-logo-1600-900.png',
                fit: BoxFit.cover,
                image:
                    'https://images.unsplash.com/photo-1522163182402-834f871fd851?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1600&h=1200&q=80',
              ),
            ),
            expandedHeight: 240,
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: SizedBox(
                height: 24,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: breadcrumbs.length,
                    itemBuilder: (context, index) {
                      return Text(
                        breadcrumbs[index],
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
                horizontal: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.star,
                    size: 16,
                    color: Colors.purple,
                  ),
                  Icon(
                    Icons.star,
                    size: 16,
                    color: Colors.purple,
                  ),
                  Icon(
                    Icons.star,
                    size: 16,
                    color: Colors.purple,
                  ),
                  Icon(
                    Icons.star,
                    size: 16,
                    color: Colors.purple,
                  ),
                  Icon(
                    Icons.star_half,
                    size: 16,
                    color: Colors.purple,
                  ),
                  Text(
                    '4.7',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    '(2531)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Moon Safari',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text('7a+'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Text(
                'A great route that everybody can enjoy and some. The start '
                'is a bit hard but the pump kicks once you are passed the '
                'halfway point.',
              ),
            ),
          ])),
        ],
      ),
    );
  }
}
