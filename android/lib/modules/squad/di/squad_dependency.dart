import 'package:caretaker_fpl/modules/loading/data/datasources/loading_remote_data_source.dart';
import 'package:caretaker_fpl/modules/loading/data/repositories/loading_repository_impl.dart';
import 'package:caretaker_fpl/modules/loading/domain/repositories/loading_repository.dart';
import 'package:caretaker_fpl/modules/loading/domain/usecases/get_recommendation_usecase.dart';
import 'package:caretaker_fpl/modules/loading/presentation/notifiers/loading_notifier.dart';

import '../../../injection_container.dart';
import '../presentation/notifiers/squad_notifier.dart';

class InjectDependencySquad extends IconfigureDependencies {
  @override
  inject() {
    injectNotifier();
    injectDataSource();
    injectRepository();
    injectUseCase();
  }

  @override
  injectNotifier() {
    sl.registerFactory(() => SquadNotifier());
  }

  @override
  injectDataSource() {

  }

  @override
  injectRepository() {

  }

  @override
  injectUseCase() {

  }
}
