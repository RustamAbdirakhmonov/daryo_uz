class News {
  String typeNews;
  String imageUrl;
  DateTime createdAt=DateTime.now();
  String visited;
  String description;
  String tezes;
  News(
      {required this.typeNews,
      required this.imageUrl,
      required this.createdAt,
      required this.visited,
      required this.description,
      required this.tezes,
      });

}
