import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import '/core/connection/network_info.dart';
import '/core/errors/failure.dart';
import '/core/params/params.dart';
import '../../../business/entities/template_entity.dart';
import '../../../../../features/template/data/datasources/template_remote_data_source.dart';
import '../../../../../features/template/data/datasources/template_local_data_source.dart';
import '../../../../../features/template/data/repositories/template_repository_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'template_event.dart';
part 'template_state.dart';

class TemplateBloc extends Bloc<TemplateEvent, TemplateState> {
  TemplateBloc() : super(TemplateInitialState()) {
    on<FetchTemplateEvent>(_mapFetchTemplateEventToState);
  }

  Future<void> _mapFetchTemplateEventToState(
      FetchTemplateEvent event, Emitter<TemplateState> emit) async {
    //emit(TemplateInitialState()); // * Eğer bu kodu açarsan her sayfa geçişinde tekrar InitialState'i emit edebilirsin. Bu her sayfa değişiminde loading ekranı getirir.

    try {
      final TemplateRepositoryImpl repository;
      repository = TemplateRepositoryImpl(
        remoteDataSource: TemplateRemoteDataSourceImpl(dio: Dio()),
        localDataSource: TemplateLocalDataSourceImpl(
          sharedPreferences: await SharedPreferences.getInstance(),
        ),
        networkInfo: NetworkInfoImpl(InternetConnection()),
      );
      final failureOrTemplate =
          await repository.getTemplate(templateParams: TemplateParams());
      emit(failureOrTemplate.fold(
        (failure) => TemplateErrorState(failure),
        (template) => TemplateLoadedState(template),
      ));
    } catch (error) {
      emit(TemplateErrorState(StateManagementFailure()));
    }
  }
}
