import 'package:caretaker_fpl/modules/home/di/home_dependency.dart';
import 'package:caretaker_fpl/modules/loading/di/loading_dependency.dart';
import 'package:get_it/get_it.dart';

import 'common/utils/dio_config.dart';

final sl = GetIt.instance;

abstract class IconfigureDependencies {
  inject();
  injectDataSource();
  injectRepository();
  injectNotifier();
  injectUseCase();
}

Future configureDependencies() async {
  //! External
  sl.registerLazySingleton(() => createDio());

  //! features dependencies
  InjectDependencyHome().inject();
  InjectDependencyLoading().inject();
}
