

class Resep {
  final String name;
  final String images;
  final String rating;
  final String totalTime;

  Resep(
      {required this.name,
      required this.images,
      required this.rating,
      required this.totalTime});

  factory Resep.fromJson(dynamic json) {
    return Resep(
        name: json['name'] as String,
        images: json['images'][0]['hostedLargeUrl'] as String,
        rating: json['rating'] as String,
        totalTime: json['totalTime'] as String);
  }

  static List<Resep> resepFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Resep.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'Resep{name: $name, iamge: $images, rating: $rating, totalTime: $totalTime}';
  }
}
