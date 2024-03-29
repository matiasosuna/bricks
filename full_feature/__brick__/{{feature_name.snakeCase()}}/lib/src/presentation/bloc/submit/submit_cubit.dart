{{#include_update_method}}
import 'package:bloc/bloc.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/repositories/{{repository_name.snakeCase()}}_repository.dart';

import 'package:{{feature_name.snakeCase()}}/src/domain/entities/{{submit_entity_name.snakeCase()}}.dart';

import 'package:{{feature_name.snakeCase()}}/src/presentation/bloc/submit/submit_state.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/entities/{{entity_name.snakeCase()}}.dart';

export 'submit_state.dart';

class SubmitCubit extends Cubit<SubmitState> {
  SubmitCubit(this.repository) : super(const SubmitState.loading());

  final {{repository_name.pascalCase()}}Repository repository;

  Future<void> fetch({{submit_entity_name.pascalCase()}} {{submit_entity_name.camelCase()}}) async {
    emit(const SubmitState.loading());
    final result = await repository.submit({{submit_entity_name.camelCase()}});
    result.fold(
      () => emit(SubmitState.success()),
      (failure) => emit(SubmitState.fail(failure)),
    );
  }
}
{{/include_update_method}}

{{^include_update_method}}
remove file
{{/include_update_method}}
