import 'dart:convert';

class SessionsWarsaw {
  final List<SessionWarsaw> sessions;

  SessionsWarsaw({
    this.sessions,
  });

  factory SessionsWarsaw.fromJson(String str) => SessionsWarsaw.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SessionsWarsaw.fromMap(Map<String, dynamic> json) => SessionsWarsaw(
        sessions: List<SessionWarsaw>.from(json["sessions"].map((x) => SessionWarsaw.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "sessions": List<dynamic>.from(sessions.map((x) => x.toMap())),
      };
}

class SessionWarsaw {
  final List<dynamic> questionAnswers;
  final String id;
  final String title;
  final String description;
  final DateTime startsAt;
  final DateTime endsAt;
  final bool isServiceSession;
  final bool isPlenumSession;
  final List<SpeakerInSessionWarsaw> speakers;
  final List<Category> categories;
  final int roomId;
  final String room;

  SessionWarsaw({
    this.questionAnswers,
    this.id,
    this.title,
    this.description,
    this.startsAt,
    this.endsAt,
    this.isServiceSession,
    this.isPlenumSession,
    this.speakers,
    this.categories,
    this.roomId,
    this.room,
  });

  factory SessionWarsaw.fromJson(String str) => SessionWarsaw.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SessionWarsaw.fromMap(Map<String, dynamic> json) => SessionWarsaw(
        questionAnswers: List<dynamic>.from(json["questionAnswers"].map((x) => x)),
        id: json["id"],
        title: json["title"],
        description: json["description"],
        startsAt: DateTime.parse(json["startsAt"]),
        endsAt: DateTime.parse(json["endsAt"]),
        isServiceSession: json["isServiceSession"],
        isPlenumSession: json["isPlenumSession"],
        speakers: List<SpeakerInSessionWarsaw>.from(json["speakers"].map((x) => SpeakerInSessionWarsaw.fromMap(x))),
        categories: List<Category>.from(json["categories"].map((x) => Category.fromMap(x))),
        roomId: json["roomId"],
        room: json["room"],
      );

  Map<String, dynamic> toMap() => {
        "questionAnswers": List<dynamic>.from(questionAnswers.map((x) => x)),
        "id": id,
        "title": title,
        "description": description,
        "startsAt": startsAt.toIso8601String(),
        "endsAt": endsAt.toIso8601String(),
        "isServiceSession": isServiceSession,
        "isPlenumSession": isPlenumSession,
        "speakers": List<dynamic>.from(speakers.map((x) => x.toMap())),
        "categories": List<dynamic>.from(categories.map((x) => x.toMap())),
        "roomId": roomId,
        "room": room,
      };
}

class Category {
  final int id;
  final String name;
  final List<CategoryItem> categoryItems;
  final int sort;

  Category({
    this.id,
    this.name,
    this.categoryItems,
    this.sort,
  });

  factory Category.fromJson(String str) => Category.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Category.fromMap(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        categoryItems: List<CategoryItem>.from(json["categoryItems"].map((x) => CategoryItem.fromMap(x))),
        sort: json["sort"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "categoryItems": List<dynamic>.from(categoryItems.map((x) => x.toMap())),
        "sort": sort,
      };
}

class CategoryItem {
  final int id;
  final String name;

  CategoryItem({
    this.id,
    this.name,
  });

  factory CategoryItem.fromJson(String str) => CategoryItem.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CategoryItem.fromMap(Map<String, dynamic> json) => CategoryItem(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
      };
}

class SpeakerInSessionWarsaw {
  final String id;
  final String name;

  SpeakerInSessionWarsaw({
    this.id,
    this.name,
  });

  factory SpeakerInSessionWarsaw.fromJson(String str) => SpeakerInSessionWarsaw.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SpeakerInSessionWarsaw.fromMap(Map<String, dynamic> json) => SpeakerInSessionWarsaw(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
      };
}
