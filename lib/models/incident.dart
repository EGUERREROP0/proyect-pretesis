class Incident {
  final String id;
  final String imageUrl;
  final String type;
  final String details;

  Incident({
    required this.id,
    required this.imageUrl,
    required this.type,
    this.details = '',
  });
}
