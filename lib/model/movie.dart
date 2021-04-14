class Movie {
  final int id, time, watchTime, rate;
  final String title, creator, favActor, note;
  final DateTime date;

  Movie({
    this.id,
    this.title,
    this.creator,
    this.favActor,
    this.time,
    this.rate,
    this.note,
    this.date,
    this.watchTime,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        id: json['id'],
        title: json['title'],
        creator: json['creator'],
        favActor: json['fav_actor'],
        time: json['time'],
        watchTime: json['watch_time'],
        rate: json['rate'],
        date: DateTime.parse(json['date']),
        note: json['note'],
      );
}
