/// Area model
class Area {
  Area({
    required this.description,
    required this.breadcrumbs,
    required this.name,
    required this.backgroundUrl,
  });

  final String backgroundUrl;
  final List<String> breadcrumbs;
  final String description;
  final String name;
}
