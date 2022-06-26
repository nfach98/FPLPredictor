import 'package:caretaker_fpl/modules/home/data/datasources/home_remote_data_source.dart';
import 'package:caretaker_fpl/modules/home/domain/repositories/home_repository.dart';
import 'package:caretaker_fpl/modules/home/domain/usecases/get_informations_usecase.dart';
import 'package:caretaker_fpl/modules/home/domain/usecases/get_teams_usecase.dart';

import '../../../injection_container.dart';
import '../data/repositories/home_repository_impl.dart';
import '../presentation/home/notifiers/home_notifier.dart';
import '../presentation/recommend/notifiers/recommend_notifier.dart';

class InjectDependencyHome extends IconfigureDependencies {
  @override
  inject() {
    injectNotifier();
    injectDataSource();
    injectRepository();
    injectUseCase();
  }

  @override
  injectNotifier() {
    sl.registerFactory(() => HomeNotifier(
      getTeamsUsecase: sl(),
      getInformationsUsecase: sl()
    ));
    sl.registerFactory(() => RecommendNotifier());
  }

  @override
  injectDataSource() {
    sl.registerLazySingleton<HomeRemoteDataSource>(
        () => HomeRemoteDataSourceImpl(sl()));
  }

  @override
  injectRepository() {
    sl.registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl(sl()));
  }

  @override
  injectUseCase() {
    sl.registerLazySingleton(() => GetTeamsUsecase(sl()));
    sl.registerLazySingleton(() => GetInformationsUsecase(sl()));
  }
}
