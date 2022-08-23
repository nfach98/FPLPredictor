import 'package:caretaker_fpl/modules/home/domain/entities/trivia_entity.dart';
import 'package:equatable/equatable.dart';

class GetTriviasEntity extends Equatable {
  const GetTriviasEntity({this.facts, this.records});

  final List<TriviaEntity>? facts;
  final List<TriviaEntity>? records;

  @override
  List<Object?> get props => [facts, records];
}
