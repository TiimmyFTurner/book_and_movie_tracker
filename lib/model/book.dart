class Book {
  final int id, pages, readTime, rate;
  final String title, writer, note, imagePath;
  final DateTime date;

  Book({
    this.id,
    this.title,
    this.writer,
    this.pages,
    this.rate,
    this.note,
    this.date,
    this.readTime,
    this.imagePath,
  });
  factory Book.fromJson(Map<String, dynamic> json) => Book(
        id: json['id'],
        title: json['title'],
        writer: json['writer'],
        pages: json['pages'],
        readTime: json['read_time'],
        rate: json['rate'],
        date: DateTime.parse(json['date']),
        note: json['note'],
        imagePath: json['image_path'],
      );
}
