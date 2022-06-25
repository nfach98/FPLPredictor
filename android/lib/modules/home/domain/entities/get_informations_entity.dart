import 'package:caretaker_fpl/modules/home/domain/entities/information_entity.dart';
import 'package:equatable/equatable.dart';

class GetInformationsEntity extends Equatable {
  const GetInformationsEntity({this.facts, this.records});

  final List<InformationEntity>? facts;
  final List<InformationEntity>? records;

  @override
  List<Object?> get props => [facts, records];
}
