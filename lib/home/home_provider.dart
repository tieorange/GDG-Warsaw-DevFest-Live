import 'package:flutter_devfest/data/session.dart';
import 'package:flutter_devfest/data/speaker.dart';
import 'package:flutter_devfest/data/team.dart';
import 'package:flutter_devfest/network/i_client.dart';
import 'package:flutter_devfest/utils/dependency_injection.dart';
import 'package:flutter_devfest/utils/devfest.dart';

abstract class IHomeProvider {
  Future<SpeakersData> getSpeakers();

  Future<SessionsData> getSessions();

  Future<TeamsData> getTeams();
}

class HomeProvider implements IHomeProvider {
  IClient _client;

  static final String kConstGetSpeakersUrl = "${Devfest.baseUrl}/speaker-kol.json";

  //! Not Working
  static final String kConstGetSessionsUrl = "${Devfest.baseUrl}/session-kol.json";

  //! Not Working
  static final String kConstGetTeamsUrl = "${Devfest.baseUrl}/team-kol.json";

  HomeProvider() {
    _client = Injector().currentClient;
  }

  @override
  Future<SpeakersData> getSpeakers() async {
    return SpeakersData(speakers: SpeakersData.getData());
  }

  @override
  Future<SessionsData> getSessions() async {
    return SessionsData(sessions: Session.getData().toList());
  }

  @override
  Future<TeamsData> getTeams() async {
    TeamsData res = TeamsData(teams: teams);
    return res;
  }
}
