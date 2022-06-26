import '../../../home/domain/entities/information_entity.dart';

class LoadingPageArguments {
  final List<int>? teams;
  final List<InformationEntity>? trivias;

  LoadingPageArguments({this.teams, this.trivias});
}