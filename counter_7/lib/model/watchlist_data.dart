// To parse this JSON data, do
//
//     final watchlist = watchlistFromJson(jsonString);

import 'dart:convert';

List<Watchlist> watchlistFromJson(String str) => List<Watchlist>.from(json.decode(str).map((x) => Watchlist.fromJson(x)));

String watchlistToJson(List<Watchlist> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Watchlist {
    Watchlist({
        required this.pk,
        required this.fields,
    });

    int pk;
    Fields fields;

    factory Watchlist.fromJson(Map<String, dynamic> json) => Watchlist(
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    Fields({
        required this.filmWatched,
        required this.filmTitle,
        required this.filmRating,
        required this.filmRelease,
        required this.filmReview,
    });

    bool filmWatched;
    String filmTitle;
    int filmRating;
    String filmRelease;
    String filmReview;

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        filmWatched: json["film_watched"],
        filmTitle: json["film_title"],
        filmRating: json["film_rating"],
        filmRelease: json["film_release"],
        filmReview: json["film_review"],
    );

    Map<String, dynamic> toJson() => {
        "film_watched": filmWatched,
        "film_title": filmTitle,
        "film_rating": filmRating,
        "film_release": filmRelease,
        "film_review": filmReview,
    };
}