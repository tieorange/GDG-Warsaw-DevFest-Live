import 'dart:convert';

class SpeakersWarsaw {
  final List<SpeakerWarsaw> speakers;

  SpeakersWarsaw({
    this.speakers,
  });

  factory SpeakersWarsaw.fromJson(String str) => SpeakersWarsaw.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SpeakersWarsaw.fromMap(Map<String, dynamic> json) => SpeakersWarsaw(
        speakers: List<SpeakerWarsaw>.from(json["speakers"].map((x) => SpeakerWarsaw.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "speakers": List<dynamic>.from(speakers.map((x) => x.toMap())),
      };
}

class SpeakerWarsaw {
  final String id;
  final String firstName;
  final String lastName;
  final String fullName;
  final String bio;
  final String tagLine;
  final String profilePicture;
  final List<SessionWarsaw> sessions;
  final bool isTopSpeaker;
  final List<dynamic> links;
  final List<dynamic> questionAnswers;
  final List<dynamic> categories;

  SpeakerWarsaw({
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

  factory SpeakerWarsaw.fromJson(String str) => SpeakerWarsaw.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SpeakerWarsaw.fromMap(Map<String, dynamic> json) => SpeakerWarsaw(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        fullName: json["fullName"],
        bio: json["bio"],
        tagLine: json["tagLine"],
        profilePicture: json["profilePicture"] == null ? null : json["profilePicture"],
        sessions: List<SessionWarsaw>.from(json["sessions"].map((x) => SessionWarsaw.fromMap(x))),
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

class SessionWarsaw {
  final int id;
  final String name;

  SessionWarsaw({
    this.id,
    this.name,
  });

  factory SessionWarsaw.fromJson(String str) => SessionWarsaw.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SessionWarsaw.fromMap(Map<String, dynamic> json) => SessionWarsaw(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
      };
}
