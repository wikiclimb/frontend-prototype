import '../models/area.dart';

List<Area> areas = <Area>[
  Area(
    name: 'Yosemite',
    backgroundUrl:
        'https://images.unsplash.com/photo-1510874089967-a9607c235707?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1600&h=900&q=80',
    description: 'The best known area in the world for a reason. '
        'Besides being a worthy destination due to its history, Yosemite '
        'has enough climbing to keep you going for several lifetimes.',
    breadcrumbs: ['North-america', 'Us', 'California'],
  ),
  Area(
    name: 'Siurana',
    backgroundUrl:
        'https://images.unsplash.com/photo-1578235809718-336da2f924b1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1600&h=900&q=80',
    description: 'Home to hard sport climbing in amazing rock. Siurana also '
        'offers some of the best weather to be found anywhere.',
    breadcrumbs: ['Europe', 'Spain', 'Catalonia'],
  ),
  Area(
    name: 'Rodellar',
    backgroundUrl:
        'https://upload.wikimedia.org/wikipedia/commons/9/9e/El_delf%C3%ADn%2C_Rodellar%2C_Huesca.jpg',
    description: 'Overhangs and swimming holes make Rodellar the go-to '
        'destination for hot days. Do not be fooled though, Rodellar can '
        'also be a great place in spring and fall.',
    breadcrumbs: ['Europe', 'Spain', 'Aragon', 'Huesca'],
  ),
];
