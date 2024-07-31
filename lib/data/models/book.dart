class Book {
  String? id;
  String title;
  String description;
  double price;
  int page;
  double rate;
  String category;
  String image;
  String bookUrl;

  Book({
    this.id,
    required this.price,
    required this.title,
    required this.description,
    required this.page,
    required this.rate,
    required this.category,
    required this.image,
    required this.bookUrl,
  });
}
