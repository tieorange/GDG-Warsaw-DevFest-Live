import 'dart:convert';

class SpeakersWarsaw {
  final List<Speaker> speakers;

  SpeakersWarsaw({
    this.speakers,
  });

  factory SpeakersWarsaw.fromJson(String str) => SpeakersWarsaw.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SpeakersWarsaw.fromMap(Map<String, dynamic> json) => SpeakersWarsaw(
        speakers: List<Speaker>.from(json["speakers"].map((x) => Speaker.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "speakers": List<dynamic>.from(speakers.map((x) => x.toMap())),
      };
}

class Speaker {
  final String id;
  final String firstName;
  final String lastName;
  final String fullName;
  final String bio;
  final String tagLine;
  final String profilePicture;
  final List<Session> sessions;
  final bool isTopSpeaker;
  final List<dynamic> links;
  final List<dynamic> questionAnswers;
  final List<dynamic> categories;

  Speaker({
    this.id,
    this.firstName,
    this.lastName,
    this.fullName,
    this.bio,
    this.tagLine,
    this.profilePicture,
    this.sessions,
    this.isTopSpeaker,
    this.links,
    this.questionAnswers,
    this.categories,
  });

  factory Speaker.fromJson(String str) => Speaker.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Speaker.fromMap(Map<String, dynamic> json) => Speaker(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        fullName: json["fullName"],
        bio: json["bio"],
        tagLine: json["tagLine"],
        profilePicture: json["profilePicture"] == null ? null : json["profilePicture"],
        sessions: List<Session>.from(json["sessions"].map((x) => Session.fromMap(x))),
        isTopSpeaker: json["isTopSpeaker"],
        links: List<dynamic>.from(json["links"].map((x) => x)),
        questionAnswers: List<dynamic>.from(json["questionAnswers"].map((x) => x)),
        categories: List<dynamic>.from(json["categories"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "fullName": fullName,
        "bio": bio,
        "tagLine": tagLine,
        "profilePicture": profilePicture == null ? null : profilePicture,
        "sessions": List<dynamic>.from(sessions.map((x) => x.toMap())),
        "isTopSpeaker": isTopSpeaker,
        "links": List<dynamic>.from(links.map((x) => x)),
        "questionAnswers": List<dynamic>.from(questionAnswers.map((x) => x)),
        "categories": List<dynamic>.from(categories.map((x) => x)),
      };
}

class Session {
  final int id;
  final String name;

  Session({
    this.id,
    this.name,
  });

  factory Session.fromJson(String str) => Session.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Session.fromMap(Map<String, dynamic> json) => Session(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
      };
}
