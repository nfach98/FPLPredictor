import 'package:caretaker_fpl/modules/loading/data/datasources/loading_remote_data_source.dart';
import 'package:caretaker_fpl/modules/loading/data/repositories/loading_repository_impl.dart';
import 'package:caretaker_fpl/modules/loading/domain/repositories/loading_repository.dart';
import 'package:caretaker_fpl/modules/loading/domain/usecases/get_recommendation_usecase.dart';
import 'package:caretaker_fpl/modules/loading/presentation/notifiers/loading_notifier.dart';

import '../../../injection_container.dart';

class InjectDependencyLoading extends IconfigureDependencies {
  @override
  inject() {
    injectNotifier();
    injectDataSource();
    injectRepository();
    injectUseCase();
  }

  @override
  injectNotifier() {
    sl.registerFactory(() => LoadingNotifier(getRecommendUsecase: sl()));
  }

  @override
  injectDataSource() {
    sl.registerLazySingleton<LoadingRemoteDataSource>(
        () => LoadingRemoteDataSourceImpl(sl()));
  }

  @override
  injectRepository() {
    sl.registerLazySingleton<LoadingRepository>(() => LoadingRepositoryImpl(sl()));
  }

  @override
  injectUseCase() {
    sl.registerLazySingleton(() => GetRecommendUsecase(sl()));
  }
}
