import 'package:bloc/bloc.dart';
import 'package:example/src/domain/repositories/autos_repository.dart';

import 'package:example/src/presentation/bloc/auto_state.dart';

export 'auto_state.dart';

class AutoCubit extends Cubit<AutoState> {
  AutoCubit(this.repository) : super(const AutoState.loading());

  final AutosRepository repository;

  Future<void> fetch() async {
    emit(const AutoState.loading());
    final result = await repository.fetch();
    result.fold(
      (failure) => emit(AutoState.fail(failure)),
      (data) => emit(AutoState.success(data)),
    );
  }
}
