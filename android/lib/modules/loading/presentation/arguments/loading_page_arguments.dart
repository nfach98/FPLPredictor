import '../../../home/domain/entities/trivia_entity.dart';

class LoadingPageArguments {
  final List<int>? teams;
  final List<int>? players;
  final List<TriviaEntity>? trivias;
  final String type;

  LoadingPageArguments(this.type, {this.teams, this.players, this.trivias});
}