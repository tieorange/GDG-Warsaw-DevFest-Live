class TeamsData {
  List<Team> teams;

  TeamsData({this.teams});

  TeamsData.fromJson(Map<String, dynamic> json) {
    if (json['teams'] != null) {
      teams = new List<Team>();
      json['teams'].forEach((v) {
        teams.add(Team.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.teams != null) {
      data['teams'] = this.teams.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Team {
  String name;
  String desc;
  String job;
  String image;
  String speciality;
  String fbUrl;
  String twitterUrl;
  String linkedinUrl;
  String githubUrl;
  String contribution;

  Team(
      {this.name,
      this.desc,
      this.job,
      this.image,
      this.speciality,
      this.fbUrl,
      this.twitterUrl,
      this.linkedinUrl,
      this.githubUrl,
      this.contribution});

  Team.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    desc = json['desc'];
    job = json['job'];
    image = json['image'];
    speciality = json['speciality'];
    fbUrl = json['fb_url'];
    twitterUrl = json['twitter_url'];
    linkedinUrl = json['linkedin_url'];
    githubUrl = json['github_url'];
    contribution = json['contribution'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['desc'] = this.desc;
    data['job'] = this.job;
    data['image'] = this.image;
    data['speciality'] = this.speciality;
    data['fb_url'] = this.fbUrl;
    data['twitter_url'] = this.twitterUrl;
    data['linkedin_url'] = this.linkedinUrl;
    data['github_url'] = this.githubUrl;
    data['contribution'] = this.contribution;
    return data;
  }
}

List<Team> teams = [
  Team(
    name: "Andrii Kovalchuk",
    desc: "Organizer",
    contribution: "",
    image: "https://warrad.devfest.pl/img/person/andrii_kovalchuk.jpg",
  ),
  Team(
    name: "Andrzej Torski",
    desc: "Organizer",
    contribution: "",
    image:
        "https://sessionize.com/image?f=c92dc59d5b94b34f8b522b00b0162b6a,200,200,1,0,fd-bf5d-4c9f-ac70-8ec69cd01f2f.c29f71c9-7515-4740-b996-469de04993b7.jpg",
  ),
  Team(
    name: "Aleksandra Woźniak",
    desc: "Organizer",
    contribution: "",
    image: "https://warrad.devfest.pl/img/person/aleksandra_wozniak.jpg",
  ),
  Team(
    name: "Ania Jezierska",
    desc: "Organizer",
    contribution: "",
    image: "https://warrad.devfest.pl/img/person/ania_jezierska.jpg",
  ),
  Team(
    name: "Eli Halych",
    desc: "Organizer",
    contribution: "",
    image: "https://warrad.devfest.pl/img/person/eli_halych.jpg",
  ),
  Team(
    name: "Kamila Ratajczak",
    desc: "Organizer",
    contribution: "",
    image: "https://warrad.devfest.pl/img/person/kamila_ratajczak.png",
  ),
  Team(
    name: "Maciej Sawicki",
    desc: "Organizer",
    contribution: "",
    image: "https://warrad.devfest.pl/img/person/maciej_sawicki.jpg",
  ),
  Team(
    name: "Piotr Trębacz",
    desc: "Organizer",
    contribution: "",
    image: "https://warrad.devfest.pl/img/person/piotr_trebacz.jpg",
  ),
  Team(
    name: "Sebastian Denis",
    desc: "Organizer",
    contribution: "",
    image: "https://warrad.devfest.pl/img/person/sebastian_denis.jpg",
  )
];
