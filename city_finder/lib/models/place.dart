class Place {
  final String id;
  final String name;
  final String categoryId;
  final String description;
  final String address;
  final double latitude;
  final double longitude;
  final String? phone;
  final String? hours;
  final String? website;

  const Place({
    required this.id,
    required this.name,
    required this.categoryId,
    required this.description,
    required this.address,
    required this.latitude,
    required this.longitude,
    this.phone,
    this.hours,
    this.website,
  });
}
